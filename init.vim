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
set clipboard+=unnamedplus

" indenting
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab 
set smartindent
set autoindent

" line numbering 
set number relativenumber

" set a darker highlight color in visual mode
highlight Visual ctermbg=240

" set scrolloff to keep cursor in the middle
set scrolloff=999

" quickly cycle between open buffers
nnoremap <Leader>j :bnext<CR>
nnoremap <Leader>k :bprevious<CR>

" navigate windows more easily
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" navigate tabs more easily
nnoremap <A-h> :tabprevious<CR>
nnoremap <A-l> :tabnext<CR>

nnoremap <C-p> :<C-u>FZF<CR>

" plugins using https://github.com/junegunn/vim-plug
call plug#begin('~/.local/shared/nvim/plugged')

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'JuliaEditorSupport/julia-vim'

Plug 'jiangmiao/auto-pairs'

Plug 'preservim/nerdcommenter'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-repeat'

Plug 'christoomey/vim-tmux-navigator'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

" required at least for nerdcommenter plugin
filetype plugin on

" navigating coc autocompletion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" colorscheme
colorscheme catppuccin-frappe
