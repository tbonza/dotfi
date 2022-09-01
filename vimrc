set nocompatible              " required
filetype off                  " required

"-------------------
" Syntax and indent
"-------------------
syntax on
set showmatch

colo ron

filetype plugin indent on " enable file type detection
set autoindent

"----------------------
" Basic editing config
"----------------------
set shortmess+=I " disable startup message
set nu " number lines
set rnu " relative line numbering
set hls " highlight search
" use 2 spaces instead of tabs during formatting
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=0

" column should not be more than 80 characters.
highlight ColorColumn ctermbg=gray
set colorcolumn=80

"--------------------------
" Language specific config
"--------------------------
autocmd BufNewFile,BufRead *.tex set spell spelllang=en_us

"------------------
" Plugins
"------------------

call plug#begin('~/.vim/plugged')

Plug 'JuliaEditorSupport/julia-vim'
Plug 'lervag/vimtex'
Plug 'cespare/vim-toml'
Plug 'chr4/nginx.vim'

" Initialize plugin system
call plug#end()
