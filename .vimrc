let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'
Plug 'dracula/vim', { 'as' : 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'eliba2/vim-node-inspect'
call plug#end()

filetype plugin indent on
syntax on
set number
set tabstop     =2
set softtabstop =2
set shiftwidth  =2
set smartindent
set expandtab
set mouse=a

highlight ColorColumn ctermbg=0 guibg=black

color dracula

let g:indent_guides_enable_on_vim_startup = 1
let NERDTreeShowHidden=1

autocmd VimEnter * NERDTree

filetype plugin on
