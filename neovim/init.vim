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

" Allows copy-pasting from other apps
" workaround: https://github.com/neovim/neovim/issues/8631
let g:clipboard = {'copy': {'+': 'pbcopy', '*': 'pbcopy'}, 'paste': {'+': 'pbpaste', '*': 'pbpaste'}, 'name': 'pbcopy', 'cache_enabled': 0}
if has('clipboard')
  if has('unnamedplus')
    set clipboard=unnamedplus,unnamed
else
    set clipboard=unnamed
  endif
endif

" Plugins
" ---------------------------------------------------------------

call plug#begin('~/.local/share/nvim/plugged')

" UI
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'itchyny/lightline.vim'

" " Theme
Plug 'phanviet/vim-monokai-pro'

" " Utility
" Currently causing slow down when opening files
" https://github.com/editorconfig/editorconfig-vim/issues/100
" Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug '907th/vim-auto-save'
Plug 'terryma/vim-multiple-cursors'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

" " Language Packs
Plug 'sheerun/vim-polyglot'


call plug#end()


" Theme/Editor Config
" ---------------------------------------------------------------

syntax on                      " Enable syntax highlighting
filetype plugin indent on       " Automatically detect file types

set termguicolors               " Enables truecolor
colorscheme monokai_pro

" Line Numbers
set number                      " Line numbers on
set numberwidth=5
" Make line number column transparent
highlight LineNr guibg=NONE guifg=#555555

" Cursor Styles
" Block in normal, line in insert, underline in replace
set guicursor=n-v-c-sm:block,i-ci-ve:ver25-Cursor,r-cr-o:hor20

" Cursor Line
set cursorline
highlight CursorLineNr guifg=#BBBBBB
highlight CursorLine guibg=NONE guifg=NONE

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


" Vim-AutoSave Config
" ---------------------------------------------------------------

let g:auto_save = 1  " enable AutoSave on Vim startup


" FZF Config
" ---------------------------------------------------------------

nnoremap <silent> <Leader><Leader> :FZF<CR>


" Firenvim Config
" ---------------------------------------------------------------

let g:firenvim_config = {
    \ 'localSettings': {
        \ '.*': {
            \ 'selector': 'textarea',
            \ 'takeover': 'never',
        \ },
    \ }
\ }

if exists('g:started_by_firenvim')
 let g:auto_save = 0
endif
