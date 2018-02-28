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

colorscheme molokai

" ┌───────────────────────────────────┐
" │           General config          │
" └───────────────────────────────────┘


set shell=/bin/bash
syntax on
" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Display extra whitespace
set listchars=tab:»·,trail:·,nbsp:·
set list

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Set numbers
set number
map <leader>rn :set relativenumber!<cr>

" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

" server
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.rb :call DeleteTrailingWS()
autocmd BufWrite *.php :call DeleteTrailingWS()

" client
autocmd BufWrite *.html :call DeleteTrailingWS()
autocmd BufWrite *.haml :call DeleteTrailingWS()
autocmd BufWrite *.js :call DeleteTrailingWS()
autocmd BufWrite *.jsx :call DeleteTrailingWS()
autocmd BufWrite *.scss :call DeleteTrailingWS()
autocmd BufWrite *.styl :call DeleteTrailingWS()
autocmd BufWrite *.css :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()
autocmd BufWrite *.ejs :call DeleteTrailingWS()
autocmd BufWrite *.erb :call DeleteTrailingWS()

" shell
autocmd BufWrite *.vimrc :call DeleteTrailingWS()
autocmd BufWrite *.bashrc :call DeleteTrailingWS()

" ┌───────────────────────────────────┐
" │               Mapping             │
" └───────────────────────────────────┘

map <C-t> :FZF<CR>

" ┌───────────────────────────────────┐
" │               Plugins             │
" └───────────────────────────────────┘

" Airline 
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '▶'
let g:airline#extensions#tabline#right_sep = '◀'
let g:airline_symbols#maxlinenr = '☰'
let g:airline_theme = 'dark'
