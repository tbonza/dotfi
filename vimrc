set nocompatible              " required
filetype off                  " required

"-------------------
" Syntax and indent
"-------------------
syntax on
set showmatch

colo habamax

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

" use 2 spaces for cpp and xml
autocmd FileType py setlocal ts=4 sw=4 sts=0 expandtab

" column should not be more than 80 characters.
highlight ColorColumn ctermbg=grey
set colorcolumn=80

"----------------------
" Package Manager
"----------------------

call plug#begin()

Plug 'lervag/vimtex'

call plug#end()
