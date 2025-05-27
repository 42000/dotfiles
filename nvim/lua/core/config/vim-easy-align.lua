local M = {
    'junegunn/vim-easy-align',
}

function M.config()
    vim.cmd("xmap ga <Plug>(EasyAlign)")
    vim.cmd("nmap ga <Plug>(EasyAlign)")
end

return M
