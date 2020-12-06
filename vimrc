" .vimrc created by Alex on 2020-10-08

" Make status line always visible
set laststatus=2

" Turn on line numbers by default
set number

" Tab settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Add full file path to existing statusline
" Note: %F is the full path, %f will show path relative to directory
" set statusline+=%F

" Colorscheme
set background=light
silent! colorscheme solarized
