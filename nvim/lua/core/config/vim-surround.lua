local M =
{
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            aliases = {
                ["a"] = ">",
                ["b"] = ")",
                ["B"] = "}",
                ["r"] = "]",
                ["q"] = "'",
                ["Q"] = '"',
                ["s"] = { "}", "]", ")", ">", '"', "'", "`" },
            },

            keymaps = {
                insert = "<C-e>", -- "<C-g>s",
                insert_line = "<C-S-e>", -- "<C-g>S",
                normal = "ys",
                normal_cur = "yss",
                normal_line = "yS",
                normal_cur_line = "ySS",
                visual = "S",
                visual_line = "gS",
                delete = "ds",
                change = "cs",
                change_line = "cS",
            },
        })
    end
}

return M
