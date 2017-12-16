set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/MatchTag'
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'skammer/vim-css-color'
Plugin 'mattn/emmet-vim'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

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
"colorscheme summerfruit256
set guifont=Droid\ Sans\ Mono\ 10

set guioptions-=L
set guioptions=-l

"Set file-specific tabbing rules
au BufNewFile,BufRead *.ejs set filetype=html
autocmd FileType html setlocal tabstop=2
autocmd FileType html setlocal shiftwidth=2
autocmd FileType html setlocal softtabstop=2
autocmd FileType js setlocal tabstop=2
autocmd FileType js setlocal shiftwidth=2
autocmd FileType js setlocal softtabstop=2

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

inoremap jk <Esc>
inoremap kj <Esc>

map :W :w
map :Q :q

set guioptions+=lrb
set guioptions-=lrb
