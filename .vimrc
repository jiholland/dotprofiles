" ~/.vimrc

set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set backupdir=$HOME/.local/state/vim/backup//
set complete-=i
set confirm
set directory=$HOME/.local/state/vim/swap//
set display+=lastline
set expandtab
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set nocompatible
set nowrap
set number
set relativenumber
set ruler
set scrolloff=5
set shiftwidth=2
set showcmd
set signcolumn=yes
set smartcase
set softtabstop=2
set tabpagemax=50
set tabstop=2
set ttimeout
set ttimeoutlen=100
set undodir=$HOME/.local/state/vim/undo//
set undofile
set updatetime=100
set viminfo^=!
set wildmenu

if has("termguicolors")
  set termguicolors
endif

call plug#begin()
  Plug 'airblade/vim-gitgutter'
  Plug 'ap/vim-buftabline'
  Plug 'gruvbox-community/gruvbox'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'pearofducks/ansible-vim'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
call plug#end()

autocmd VimEnter * hi Normal guibg=NONE
colorscheme gruvbox
highlight clear SignColumn

let mapleader = " "
nnoremap <leader>bd :bdelete<CR>
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :Rg<CR>
