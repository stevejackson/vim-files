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

" abbreviations for inserting lorem ipsum
iab lipsum1 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras porta ultrices urna et blandit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ut eros ac est luctus auctor. Donec vel ligula eget turpis varius imperdiet. Fusce euismod eros ut purus bibendum id tempus nisi sagittis. Nullam rutrum sapien id mauris tincidunt pulvinar. Integer vitae velit ipsum. Quisque risus velit, consequat non auctor ut, congue in risus. Sed mi nisl, porttitor adipiscing elementum vel, blandit dapibus sapien. Sed nec leo dolor. 
iab lipsum2 Duis non turpis nisi. Praesent sodales tortor a est vulputate feugiat. Nam egestas tellus ac erat sollicitudin id aliquet nunc scelerisque. Etiam interdum nisi ut dolor consequat ac consequat nisl viverra. Nullam nisl lectus, fringilla nec tristique vel, semper vitae turpis. Integer sollicitudin feugiat tincidunt. Curabitur et pretium ligula. In interdum ornare nisl nec fringilla. Aenean eget elit nunc. Sed pharetra cursus posuere. Nunc ultrices euismod nibh, vel sagittis lacus lobortis nec. Curabitur elit leo, posuere in faucibus at, euismod ac felis. In hac habitasse platea dictumst. Vestibulum consectetur iaculis vestibulum. Aliquam vestibulum mattis nunc eu hendrerit. 
