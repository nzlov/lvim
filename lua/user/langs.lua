local M = {}
M.config = function()
    lvim.lang.go.formatting = { { exe = 'gofmt│gofumpt│goimports' } }
end
return M
