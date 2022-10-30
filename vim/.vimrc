" Display settings
syntax on
set number
set relativenumber
set cursorline
set nowrap

" Search settings
set ignorecase
set hlsearch
set incsearch

" Split settings
set splitright
set splitbelow

" Tabs and indentation settings
set expandtab
set shiftwidth=4
set tabstop=4

" Key mappings
let mapleader = " "
imap jk <ESC>
nnoremap <CR> :
nnoremap <ESC><ESC> :silent! nohls<CR>
nnoremap <Leader>xb :bdelete<CR>
nnoremap <Leader>xt :tabclose<CR>
nnoremap H :bprevious<CR>
nnoremap L :bnext<CR>
