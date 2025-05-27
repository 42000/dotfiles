local M = {
    'williamboman/mason.nvim',

    dependencies = {
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
        -- 'Hoffs/omnisharp-extended-lsp.nvim',
        'saghen/blink.cmp',
    },
}

function M.config()
    require("mason").setup()
    require("mason-lspconfig").setup({ ensure_installed = ENSURED_LSP })
    local lspc = require("lspconfig")

    lspc.lua_ls.setup{}
    lspc.clangd.setup{}
    lspc.pyright.setup{}
    lspc.texlab.setup{}
    lspc.vhdl_ls.setup{}

    vim.lsp.enable(ENSURED_LSP)
    -- vim.lsp.enable({'lua_ls'})
    -- vim.lsp.enable({'texlab'})
    -- vim.lsp.enable({'pyright'})
end

return M
