set nocompatible              " required
filetype off                  " required

"-------------------
" Syntax and indent
"-------------------
syntax on
set showmatch

colo industry 

filetype plugin indent on " enable file type detection
set autoindent

"----------------------
" Basic editing config
"----------------------
set shortmess+=I " disable startup message
set nu " number lines
set rnu " relative line numbering
set hls " highlight search
set laststatus=0 " disable extra information about files during split screen

" column should not be more than 80 characters.
highlight ColorColumn ctermbg=green
set colorcolumn=80

" by default, the indent is 4 spaces.
set tabstop=2
set shiftwidth=2
set softtabstop=0

" use 2 spaces for cpp and xml
autocmd FileType py setlocal ts=4 sw=4 sts=0 expandtab

"------------------
" Plugins
"------------------

call plug#begin('~/.vim/plugged')

Plug 'JuliaEditorSupport/julia-vim'
Plug 'lervag/vimtex'
Plug 'cespare/vim-toml'

" Initialize plugin system
call plug#end()
