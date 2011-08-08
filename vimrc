" pathogen fix
filetype on
filetype off

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" use vim settings, not vi settings
set nocompatible

" :cmdline history
set history=1000

set showmode 				" show current mode

set incsearch				" find next match as you're typing the search
set hlsearch				" highlight searches

set nonumber                            " do show line numbers

set linespace=4     " add a little line space for readability

" turns off toolbar in gvim
set guioptions-=T

" indention settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" folding settings
set foldmethod=indent
set foldnestmax=3
set nofoldenable

" don't continue commenting when using O/o
set formatoptions-=o

filetype plugin on
filetype indent on

" syntax highlighting on
syntax on

" hide buffers when not displayed
set hidden

" set font
set guifont=DejaVu\ Sans\ Mono\ 10

" color schemery
colorscheme desert
set background=dark
