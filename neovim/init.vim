" General
" ---------------------------------------------------------------

scriptencoding utf-8
syntax on                       " Enable syntax highlighting
set mouse=a                     " Automatically enable mouse usage
set mousehide                   " Hide the mouse cursor while typing
filetype plugin indent on       " Automatically detect file types.

" set spell                       " Spell checking on

" Vim UI
" ---------------------------------------------------------------

" set background=dark             " Assume a dark background
set number                      " Line numbers on

" Plugins
" ---------------------------------------------------------------

call plug#begin('~/.local/share/nvim/plugged')

"" Theme
" Plug 'phanviet/vim-monokai-pro'

"" UI
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'terryma/vim-multiple-cursors'

call plug#end()

" set termguicolors
" colorscheme monokai_pro 

" NerdTree Config
" ---------------------------------------------------------------

map <C-e> :NERDTreeToggle<CR>:

let NERDTreeShowHidden=1
let NERDTreeMouseMode=2

" if isdirectory(expand("~/.local/share/nvim/plugged/nerdtree"))
"   map <leader>e :NERDTreeFind<CR>
"   nmap <leader>nt :NERDTreeFind<CR>

"   let NERDTreeShowBookmarks=1
"   " let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
"   let NERDTreeChDirMode=0
"   let NERDTreeQuitOnOpen=1
"   let NERDTreeMouseMode=2
"   let NERDTreeShowHidden=1
"   let NERDTreeKeepTreeInNewTab=1
"   let g:nerdtree_tabs_open_on_gui_startup=0
" endif
