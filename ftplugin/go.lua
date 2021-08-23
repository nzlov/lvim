local dap_install = require "dap-install"
dap_install.config("go_delve_dbg", {
  adapters = function(callback, config)
        local stdout = vim.loop.new_pipe(false)
        local handle
        local pid_or_err
        local port = 38697
        local opts = {
          stdio = {nil, stdout},
          args = {"dap", "-l", "127.0.0.1:" .. port},
          detached = true
        }
        handle, pid_or_err = vim.loop.spawn("dlv", opts, function(code)
          stdout:close()
          handle:close()
          if code ~= 0 then
            print('dlv exited with code', code)
          end
        end)
        assert(handle, 'Error running dlv: ' .. tostring(pid_or_err))
        stdout:read_start(function(err, chunk)
          assert(not err, err)
          if chunk then
            vim.schedule(function()
              require('dap.repl').append(chunk)
            end)
          end
        end)
        -- Wait for delve to start
        vim.defer_fn(
          function()
            callback({type = "server", host = "127.0.0.1", port = port})
          end,
          100)
    end,
    configurations = {
        {
            type = "go",
            name = "Attach",
            request = "attach",
            processId = require('dap.utils').pick_process,
            program = "${workspaceFolder}"
        },
        {
            type = "go",
            name = "Debug curr file",
            request = "launch",
            program = "${file}"
        },
        {
            type = "go",
            name = "Debug",
            request = "launch",
            program = "${workspaceFolder}"
        },
        {
            type = "go",
            name = "Debug curr test", -- configuration for debugging test files
            request = "launch",
            mode = "test",
            program = "${file}"
        },
        -- works with go.mod packages and sub packages 
        {
            type = "go",
            name = "Debug test",
            request = "launch",
            mode = "test",
            program = "${workspaceFolder}"
        } 
    }
})
