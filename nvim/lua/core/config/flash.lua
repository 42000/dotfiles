local M = {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    -- { "s<CR>", mode = { "n", "x", "o" }, function() require("flash").jump({continue = true}) end, desc = "Flash Continue" },
    { "S", mode = "n", function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    -- { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
}

function M.config()
    require("flash").setup({
        modes = { char = { enabled = false } }
    })
    -- require("flash").jump({
    -- remote_op = {
    --     restore = true,
    --     motion = true,
    -- },
    -- })
end

return M
