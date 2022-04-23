" settings
set encoding=UTF-8
set number
set numberwidth=4
set noswapfile
set ignorecase

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

set clipboard=unnamedplus
set cursorline
set cc=80
set mouse=a
set splitright

let mapleader=' '

" plugins
call plug#begin("~/.config/nvim/plugged")

Plug 'joshdick/onedark.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'preservim/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

nmap <esc> :noh <CR>

" plugin configuration

" NERDCommenter
nmap <C-c> <Plug>NERDCommenterToggle
vmap <C-c> <Plug>NERDCommenterToggle<CR>gv

" NERDTree
let g:NERDTreeMinimalUI=1
nmap <F2> :NERDTreeToggle<CR>
nmap <F5> :NERDTreeRefreshRoot<CR>

" tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_ctags_bin='/opt/homebrew/bin/ctags'

" auto-pairs
au FileType python let b:AutoPairs = AutoPairsDefine({"f'" : "'", "r'" : "'", "b'" : "'"})

" Tabs
let g:airline#extensions#tabline#enabled=1
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
nmap <C-q> :bd<CR>

" appearence
syntax on
syntax enable
colorscheme onedark
let g:airline_theme='onedark'
