call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'wavded/vim-stylus'
Plug 'dracula/vim'
Plug 'tomasr/molokai'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'isRuslan/vim-es6'
Plug 'scrooloose/syntastic'

call plug#end()

" ┌───────────────────────────────────┐
" │           General config          │
" └───────────────────────────────────┘

map <C-t> :FZF<CR>

set shell=/bin/bash
syntax on
" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

