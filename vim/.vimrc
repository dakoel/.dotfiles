" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !wget -P ~/.vim/autoload https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Install plugins
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" Display settings
syntax on
silent! colorscheme onedark
set number
set cursorline
set nowrap

" Search settings
set ignorecase
set hlsearch
set incsearch

" Key mappings
nnoremap <esc><esc> :silent! nohls<Cr>
nnoremap <C-f> :Files<Cr>
