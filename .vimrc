" ~/.vimrc

set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set confirm
set expandtab
set hlsearch
set ignorecase
set incsearch
set noswapfile
set nowrap
set number
set relativenumber
set ruler
set scrolloff=5
set shiftwidth=2
set signcolumn=yes
set smartcase
set softtabstop=2
set tabstop=2
set ttimeout
set ttimeoutlen=100
set updatetime=100
set wildmenu

if has("persistent_undo")
  set undodir=$HOME/.vim/undo/
  set undofile
endif

if has("termguicolors")
  autocmd VimEnter * hi Normal guibg=NONE
  set termguicolors
endif

call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'morhetz/gruvbox'
Plug 'pearofducks/ansible-vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'yggdroot/indentline'
call plug#end()

colorscheme gruvbox
highlight clear SignColumn

let mapleader = " "
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :Rg<CR>
nnoremap <leader>u :UndotreeToggle <bar> UndotreeFocus<CR>
