-- fonction spec
require('core.launch')

-- ESSENTIELS MINIMALISTE
spec "core.config.vim-surround"
spec "core.config.comment"
spec "core.config.autopair"
spec "core.config.flash"

-- UI EN +
spec "core.config.oil"
spec "core.config.icon-picker"
spec "core.config.fzf"
spec "core.config.which-key"

-- VISUELS
-- spec "core.config.neoscroll"
-- spec "core.config.lualine"
spec "core.config.ibl"
spec "core.config.colorizer"
spec "core.config.nvim-treesitter"
-- spec "core.config.treesitter-textobject"

-- LSP
-- pour nvim < 0.11
-- spec "core.config.lsp_config"
-- SINON :
require('core.lsp_setup')
spec "core.config.blink"
spec "core.config.lsp-color"

-- GROS TRUCS PARTICULIERS
spec "core.config.tmux"
spec "core.config.vimtex"

-- DEPENDENCE D'AUTRES TRUCS
spec "core.config.devicons"

require('core.colorschemes')
require('core.keymaps')
require('core.options')
require('core.lazy')

vim.cmd("set background=dark")
vim.cmd("colorscheme gruvbox")

-- retirer le timeout des commandes, on verra si ca pete
-- c'est pour les raccourcis de iQ -> i" et aQ -> a"
-- peut-être qu'il faut plutôt augmenter le timeoutlen jsp
vim.opt.timeout = false
