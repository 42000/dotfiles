require('core.launch')

-- THEMES
spec "core.colorscheme.gruvbox"
-- spec "core.colorscheme.kanagawa"
spec "core.colorscheme.tokyonight"
spec "core.colorscheme.molokai"
-- spec "core.colorscheme.flexoki"
-- spec "core.colorscheme.molokayo"
-- spec "core.colorscheme.monokai-pro"
-- spec "core.colorscheme.monokai"
-- spec "core.colorscheme.cyberdream"
-- spec "core.colorscheme.lackluster"
-- spec "core.colorscheme.boring"
-- spec "core.colorscheme.zazen"
-- spec "core.colorscheme.tender"
-- spec "core.colorscheme.darkplus"
-- spec "core.colorscheme.yorumi"
-- spec "core.colorscheme.lighthaus"
-- spec "core.colorscheme.onedarkpro"
-- spec "core.colorscheme.biscuit"
-- spec "core.colorscheme.newpaper"
-- spec "core.colorscheme.github-theme"
-- spec "core.colorscheme.material"
-- spec "core.colorscheme.solarized"
-- spec "core.colorscheme.base16"
-- spec "core.colorscheme.nightfox"
-- spec "core.colorscheme.moonfly"
-- spec "core.colorscheme.noirbuddy"
-- spec "core.colorscheme.vscode"

-- spec "core.config.tabby"
spec "core.config.tmux"
spec "core.config.which-key"
spec "core.config.nvim-treesitter"
-- spec "core.config.nvim-tree"
spec "core.config.oil"
-- spec "core.config.smart-split"
-- spec "core.config.telescope"
-- spec "core.config.telescope-file-browser"
spec "core.config.lsp-color"
spec "core.config.lualine"
spec "core.config.lsp_config"
-- spec "core.config.completions"
spec "core.config.autopair"
spec "core.config.blink"
spec "core.config.devicons"
-- spec "core.config.noice"
-- spec "core.config.nvim-notify"
-- spec "core.config.buffer_mgr"
spec "core.config.colorizer"
-- spec "core.config.icon-picker"
spec "core.config.vim-surround"
spec "core.config.vimtex"
spec "core.config.fzf"
-- spec "core.config.mini-align"
-- spec "core.config.markdown"

spec "core.config.neoscroll"
-- spec "core.config.animate"
spec "core.config.comment"
spec "core.config.ibl"

-- FLASH
spec "core.config.flash"
-- spec "core.config.leap"

-- spec "core.config.harpoon"
-- spec "core.config.illuminate"
-- spec "core.config.dressing"

-- Jupyter (CRINGE)
-- spec "core.config.jupyter"
-- spec "core.config.jupynium"

require('core.keymaps')
require('core.options')
require('core.lazy')

--THEME
-- vim.o.termguicolors = true
vim.cmd("set background=dark")
vim.cmd("colorscheme gruvbox")
