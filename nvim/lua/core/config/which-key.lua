local M = {
    "folke/which-key.nvim",
}

-- function SetTheme(th)
--     vim.o.termguicolors = true
--     vim.cmd('colorscheme ' .. th)
--     SetLuaLine(th)
-- end

function M.config()
    	vim.o.timeout = true
    	vim.o.timeoutlen = 300

	local wk = require("which-key")
	-- As an example, we will create the following mappings:
	--  * <leader>ff find files
	--  * <leader>fr show recent files
	--  * <leader>fb Foobar
	-- we'll document:
	--  * <leader>fn new file
	--  * <leader>fe edit file
	-- and hide <leader>1

    local cpath = vim.fn.stdpath("config")
    wk.add({
            { "<leader>c", group = "config" },
            { "<leader>cd", ":cd" .. cpath .. "<CR>", desc = "config directory" },
            { "<leader>ci", ":e" .. cpath .. "/init.lua<CR>", desc = "init.lua" },
            { "<leader>cc", ":cd %:h<CR>", desc = "set to current" },

            { "<Tab>", group = "fzf" },
            { "<Tab>o", ":FzfLua oldfiles<CR>", desc = "recent files" },
            { "<Tab>g", ":FzfLua live_grep_native<CR>", desc = "live grep" },
            { "<Tab>b", ":FzfLua buffers<CR>", desc = "buffers" },
            { "<Tab>e", ":FzfLua buffers<CR>", desc = "buffers" },
            { "<Tab>m", ":FzfLua marks<CR>", desc = "marks" },
            { "<Tab><Tab>", ":FzfLua<CR>", desc = "fzf" },
            { "<Tab>t", ":FzfLua colorschemes<CR>", desc = "colorschemes" },
            { "<Tab>f", ":FzfLua files<CR>", desc = "files" },

            { "<Tab>r", group = "resume" },
            { "<Tab>rg", ":FzfLua live_grep_resume<CR>", desc = "live grep" },
            { "<Tab>r<CR>", ":FzfLua resume<CR>", desc = "resume" },
    })

    require("which-key").setup {}
end

return M
