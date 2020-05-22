set nocompatible

call plug#begin('~/.vim/bundle')

Plug 'flazz/vim-colorschemes'
Plug 'ervandew/supertab'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/MatchTag'
Plug 'godlygeek/tabular'
Plug 'kien/ctrlp.vim'
Plug 'skammer/vim-css-color'
Plug 'mattn/emmet-vim'
Plug 'fatih/vim-go'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

call plug#end()

let g:syntastic_python_checkers = ['flake8']
let g:ycm_autoclose_preview_window_after_completion=1
let g:go_fmt_command = "goimports"

set hlsearch
set incsearch
set showmatch
set smartcase
set ignorecase

syntax enable
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smarttab
set expandtab
let mapleader = ","
let g:maplead = ","
filetype plugin indent on

set t_Co=256
colorscheme Tomorrow-Night
set guifont=Source\ Code\ Pro\ 11

set guioptions-=L
set guioptions=-l

au BufNewFile,BufRead *.ejs set filetype=html

"Set file-specific tabbing rules
autocmd FileType coffee setlocal shiftwidth=2
autocmd FileType coffee setlocal softtabstop=2
autocmd FileType coffee setlocal tabstop=2
autocmd FileType css setlocal shiftwidth=2
autocmd FileType css setlocal softtabstop=2
autocmd FileType css setlocal tabstop=2
autocmd FileType html setlocal shiftwidth=2
autocmd FileType html setlocal softtabstop=2
autocmd FileType html setlocal tabstop=2
autocmd FileType js setlocal shiftwidth=2
autocmd FileType js setlocal softtabstop=2
autocmd FileType js setlocal tabstop=2
autocmd FileType nim setlocal shiftwidth=2
autocmd FileType nim setlocal softtabstop=2
autocmd FileType nim setlocal tabstop=2
autocmd FileType ruby setlocal shiftwidth=2
autocmd FileType ruby setlocal softtabstop=2
autocmd FileType ruby setlocal tabstop=2
autocmd FileType scss setlocal shiftwidth=2
autocmd FileType scss setlocal softtabstop=2
autocmd FileType scss setlocal tabstop=2
autocmd FileType yaml setlocal shiftwidth=2
autocmd FileType yaml setlocal softtabstop=2
autocmd FileType yaml setlocal tabstop=2

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

inoremap jk <Esc>
inoremap kj <Esc>

map :W :w
map :Q :q

"Hack to hide toolbar and scrollbars
set guioptions+=lrb
set guioptions-=lrb
