vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Line Numbers
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.numberwidth = 5

-- Show leading spaces
-- vim.cmd("highlight Conceal guibg=NONE ctermbg=NONE guifg=#676767")
-- vim.cmd("autocmd BufWinEnter * setl conceallevel=2 concealcursor=nv")
-- vim.cmd("autocmd BufWinEnter * syn match LeadingSpace /\(^ *\)\@<= / containedin=ALL conceal cchar=·")
-- vim.cmd("autocmd BufReadPre * setl conceallevel=2 concealcursor=nv")
-- vim.cmd("autocmd BufReadPre * syn match LeadingSpace /\(^ *\)\@<= / containedin=ALL conceal cchar=·")

-- Navigate Panes Better
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>')
