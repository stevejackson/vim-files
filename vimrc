" pathogen fix
filetype on
filetype off

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" use vim settings, not vi settings
set nocompatible

" no backup files, no swap files
set nobackup
set noswapfile

" :cmdline history
set history=1000

set showmode 				" show current mode

set incsearch				" find next match as you're typing the search
set hlsearch				" highlight searches

set number                              " do show line numbers

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
filetype plugin indent on
" syntax highlighting on
syntax on

" hide buffers when not displayed
set hidden

" set font
set guifont=DejaVu\ Sans\ Mono\ 10

" color schemery
colorscheme desert
set background=dark

" paste toggle mode, F2, for pasting text in insert mode
set pastetoggle=<F2>

" clear the search buffer when you press ,/
nmap <silent> ,/ :nohlsearch<CR>
