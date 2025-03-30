vim.opt.termguicolors = true -- couleur du terminal

-- NUMEROS DE LIGNE
vim.opt.ruler = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4
vim.opt.signcolumn = "yes"

vim.opt.wrap = false

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- TABS
vim.opt.tabstop = 4 -- taille des indents
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true -- convert tab -> spaces
vim.opt.autoindent = true
vim.opt.smartindent = true
-- vim.o.showtabline = 2
-- vim.opt.sessionoptions = 'curdir,folds,globals,help,tabpages,terminal,winsize'

-- SEARCH
vim.opt.incsearch = true

vim.opt.ignorecase = true -- ignorer les majuscule lors d'une recherche
vim.opt.smartcase = true

vim.opt.clipboard = unnamedplus

vim.opt.cmdheight = 1
vim.opt.spelllang = 'fr'

vim.opt.virtualedit = "block"

-- vim.opt.winborder = "single" -- gros curseur degueu
-- vim.opt.list = true -- montre les tabs + blankspace
