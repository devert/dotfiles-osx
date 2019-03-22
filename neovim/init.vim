" General
" ---------------------------------------------------------------

set nocompatible
set encoding=utf-8
set fileencoding=utf-8
set timeoutlen=500 ttimeoutlen=0

let g:mapleader="\<Space>"


" Vim UI
" ---------------------------------------------------------------

set mouse=a                     " Automatically enable mouse usage
set mousehide                   " Hide the mouse cursor while typing
set clipboard=unnamed          " Allows copy-pasting from other apps


" Plugins
" ---------------------------------------------------------------

call plug#begin('~/.local/share/nvim/plugged')

" UI
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'itchyny/lightline.vim'

" Theme
Plug 'phanviet/vim-monokai-pro'

" Utility
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Language Packs
Plug 'sheerun/vim-polyglot'


call plug#end()


" Theme/Editor Config 
" ---------------------------------------------------------------

syntax on                       " Enable syntax highlighting
filetype plugin indent on       " Automatically detect file types

set termguicolors               " Enables truecolor
colorscheme monokai_pro

set number                      " Line numbers on
set numberwidth=5
highlight LineNr guibg=NONE    " Make line number column transparent

" Show leading spaces
highlight Conceal guibg=NONE ctermbg=NONE guifg=#676767
autocmd BufWinEnter * setl conceallevel=2 concealcursor=nv
autocmd BufWinEnter * syn match LeadingSpace /\(^ *\)\@<= / containedin=ALL conceal cchar=·
autocmd BufReadPre * setl conceallevel=2 concealcursor=nv
autocmd BufReadPre * syn match LeadingSpace /\(^ *\)\@<= / containedin=ALL conceal cchar=·


" NERDTree Config
" ---------------------------------------------------------------

map <C-e> :NERDTreeToggle<CR>:

" Close vim if the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

if isdirectory(expand("~/.local/share/nvim/plugged/nerdtree"))
  map <leader>e :NERDTreeFind<CR>
  nmap <leader>nt :NERDTreeFind<CR>

  let NERDTreeShowBookmarks=1
  let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
  let NERDTreeChDirMode=0
  let NERDTreeQuitOnOpen=1
  let NERDTreeMouseMode=2
  let NERDTreeShowHidden=1
  let NERDTreeKeepTreeInNewTab=1
  let NERDTreeMinimalUI = 1
  let NERDTreeDirArrows = 1
  let g:nerdtree_tabs_open_on_gui_startup=0
endif


" Lightline Config
" ---------------------------------------------------------------

let g:lightline = {
  \'colorscheme': 'one',
  \}

" FZF Config
" ---------------------------------------------------------------

nnoremap <silent> <Leader><Leader> :FZF<CR>