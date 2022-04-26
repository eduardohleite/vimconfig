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
Plug 'puremourning/vimspector'

call plug#end()

" key bindings

" remove search results highlights when press esc
nmap <esc> :noh <CR>

" save when press ctrl+s
nmap <C-s> :w <CR>

" python
let g:python3_host_prog = expand('$HOME/.config/nvim/env/bin/python3') 

" plugin configuration

" NERDCommenter
nmap <C-k> <Plug>NERDCommenterToggle
vmap <C-k> <Plug>NERDCommenterToggle<CR>gv

" NERDTree
let g:NERDTreeMinimalUI=1
let NERDTreeShowHidden=1
nmap <F2> :NERDTreeToggle<CR>
nmap <F5> :NERDTreeRefreshRoot<CR>

" tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_ctags_bin='/opt/homebrew/bin/ctags'

" auto-pairs
au FileType python let b:AutoPairs = AutoPairsDefine({"f'" : "'", "r'" : "'", "b'" : "'"})

" vimspector
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
nmap <f12> :VimspectorReset<CR>

" coc
let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0

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
