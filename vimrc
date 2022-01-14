set nocompatible              " required
filetype off                  " required

"-------------------
" Syntax and indent
"-------------------
syntax on
set showmatch

colo default

filetype plugin indent on " enable file type detection
set autoindent

"----------------------
" Basic editing config
"----------------------
set shortmess+=I " disable startup message
set nu " number lines
set rnu " relative line numbering
set hls " highlight search

" by default, the indent is 4 spaces.
set tabstop=4
set shiftwidth=4
set softtabstop=0

" use 2 spaces for cpp and xml
autocmd FileType cpp setlocal ts=2 sw=2 sts=0 expandtab
autocmd FileType xml setlocal ts=2 sw=2 sts=0 expandtab


"------------------
" Plugins
"------------------

call plug#begin('~/.vim/plugged')

Plug 'JuliaEditorSupport/julia-vim'
Plug 'lervag/vimtex'
Plug 'cespare/vim-toml'

" Initialize plugin system
call plug#end()
