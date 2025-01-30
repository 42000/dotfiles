vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<leader>e', function ()
    require("oil").open_float(".")
end
, {silent=true, desc='Oil pwd'})

vim.keymap.set('n', '<leader>w', function ()
    require("oil").open_float()
end
, {silent=true, desc='Oil buffer'})

-- RIP KAKOUNE
-- vim.keymap.set({'n', 'v', 'o', 'x'}, '<A-l>', '$', {silent=true})
-- vim.keymap.set({'n', 'v', 'o', 'x'}, '<A-h>', '^', {silent=true})

-- source Python
vim.keymap.set('n', '<leader>p', ':silent !python % & disown<CR>', {silent=true, desc='python source'})

vim.keymap.set({'n', 'v'}, '<leader>?', ':noh<CR>', {silent=true})

vim.keymap.set({'n', 'v'}, '<C-j>', '<C-d>', {silent=true})
vim.keymap.set({'n', 'v'}, '<C-k>', '<C-u>', {silent=true})

-- INSIDE QUOTE
vim.keymap.set({'x', 'o'}, 'iQ', 'i"', {silent=true})
vim.keymap.set({'x', 'o'}, 'iq', "i'", {silent=true})

-- vim.cmd("imap <C-e> <C-g>s") -- JE SAIS PAS POURQUOI ÇA MARCHE QUE COMME ÇA??
-- GÉRÉ DANS VIM-SURROUND
-- vim.keymap.set('i', '<C-e>', '<C-g>s', {silent=true})

-- COPY/PASTE
vim.keymap.set('v', '<leader>c', '"+y<Esc>', {desc= "copy clipboard", silent=true})
vim.keymap.set({'v','n'}, '<C-S-c>', '"+y', {desc= "copy clipboard + motion", silent=true})
vim.keymap.set('i', '<S-Insert>', '<Esc>"+pi', {silent=true})

-- SPELL
vim.keymap.set('n', '<leader>s','', {silent=true, desc='spell'})
vim.keymap.set('n', '<leader>ss',':set spell!<CR>',{silent=true, desc='toggle'})
vim.keymap.set('n', '<leader>sf',':set spelllang=fr<CR>',{silent=true, desc='fr'})
vim.keymap.set('n', '<leader>se',':set spelllang=en<CR>',{silent=true, desc='en'})

-- vim.keymap.set({'n','v'}, 'j', 'gj', {silent=true})
-- vim.keymap.set({'n','v'}, 'k', 'gk', {silent=true})

-- vim.keymap.set('n', '<leader>ff', ':FzfLua files<CR>', {desc = "files", silent=true})
vim.keymap.set("n", "<leader>i", "<cmd>IconPickerNormal<cr>", opts)

function lightswitch()
    if vim.o.background == 'dark' then
        vim.o.background = 'light'
    else 
        vim.o.background = 'dark'
    end
end

vim.keymap.set({"n", "v"}, "<F5>", lightswitch, opts)
