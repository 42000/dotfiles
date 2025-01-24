local M = {
    'Mofiqul/vscode.nvim',
    lazy = false,
    priority = 1000,
}

function M.config()
   require("vscode").setup()
end

return M
