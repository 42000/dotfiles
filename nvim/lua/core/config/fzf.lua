local M = {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
}

function M.config()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({})
end

return M
