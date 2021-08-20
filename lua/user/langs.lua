local M = {}
M.config = function()
    lvim.lang.go.formatters = {{ exe = "goimports" }}
end
return M
