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

set showmode        " show current mode

set incsearch       " find next match as you're typing the search
set hlsearch        " highlight searches

set number                              " do show line numbers

set linespace=4     " add a little line space for readability

" turns off toolbar in gvim
set guioptions-=T

" indention settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" folding settings
set foldmethod=indent
set foldnestmax=3
set nofoldenable

filetype plugin on
filetype indent on
filetype plugin indent on
" syntax highlighting on
syntax on

" don't continue commenting when using O/o
set formatoptions-=o

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

" give a few lines of room when scrolling based off cursor position
set scrolloff=3

let mapleader = ","

" toggle see invisibles
nmap <leader>si :set list!<CR>

" strip trailing whitespaces function
nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>
function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Execute it
  %s/\s\+$//e
  " Clean up: restore search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

" re-indent file function
nnoremap <silent> <F4> :call <SID>ReindentFile()<CR>
function! <SID>ReindentFile()
  " Save cursor position
  let l = line(".")
  let c = col(".")

  " Reindent File
  let cmd = "normal!" . "gg=G"
  execute cmd

  " Move cursor back to saved position
  call cursor(l, c)
endfunction
