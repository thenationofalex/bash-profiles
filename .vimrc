call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'
Plug 'dracula/vim', { 'as' : 'dracula' } 
Plug 'vim-airline/vim-airline'
Plug  'tpope/vim-fugitive'
call plug#end()

filetype plugin indent on
syntax on
set number
set sts=2
set ts=2
set sw=4

color dracula

filetype plugin on
