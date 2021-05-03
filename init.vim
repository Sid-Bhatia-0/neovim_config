" leader key
let mapleader=" "

" disabling arrow keys in normal mode
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

" disabling arrow keys in visual mode
vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>

" syntax highlighting
syntax on

" remove sound effects on trying to do something invalid
set noerrorbells

" searching
set hlsearch
set incsearch
nnoremap <CR> :nohlsearch<CR>

" indenting
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab 
set smartindent
set autoindent

" line numbering 
set number relativenumber

" plugins
call plug#begin('~/.local/shared/nvim/plugged')

Plug 'JuliaEditorSupport/julia-vim'

Plug 'jiangmiao/auto-pairs'

Plug 'preservim/nerdcommenter'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-repeat'

call plug#end()

" required at least for nerdcommenter plugin
filetype plugin on
