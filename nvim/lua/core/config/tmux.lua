local M = {
    "aserowy/tmux.nvim",
}

function M.config()
    require("tmux").setup({
        navigation = {
            -- cycles to opposite pane while navigating into the border
            cycle_navigation = true,

            -- enables default keybindings (C-hjkl) for normal mode
            enable_default_keybindings = false,

            -- prevents unzoom tmux when navigating beyond vim border
            persist_zoom = false,
        },
        resize = {
            -- enables default keybindings (A-hjkl) for normal mode
            enable_default_keybindings = false,

            -- sets resize steps for x axis
            resize_step_x = 3,

            -- sets resize steps for y axis
            resize_step_y = 2,
        }
    })

    vim.keymap.set({'n', 'v', 'i'}, '<A-l>',function() require('tmux').move_right() end, {silent=true})
    vim.keymap.set({'n', 'v', 'i'}, '<A-h>',function() require('tmux').move_left() end, {silent=true})
    vim.keymap.set({'n', 'v', 'i'}, '<A-k>',function() require('tmux').move_top() end, {silent=true})
    vim.keymap.set({'n', 'v', 'i'}, '<A-j>',function() require('tmux').move_bottom() end, {silent=true})

    vim.keymap.set({'n', 'v', 'i'}, '<C-A-l>',function() require('tmux').resize_right() end, {silent=true})
    vim.keymap.set({'n', 'v', 'i'}, '<C-A-h>',function() require('tmux').resize_left() end, {silent=true})
    vim.keymap.set({'n', 'v', 'i'}, '<C-A-k>',function() require('tmux').resize_top() end, {silent=true})
    vim.keymap.set({'n', 'v', 'i'}, '<C-A-j>',function() require('tmux').resize_bottom() end, {silent=true})
end

return M
