call plug#begin('~/.config/nvim/plugged')
  " Plugin Section
  " Themes
  Plug 'morhetz/gruvbox'
  " Fuzzy search
  Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
  Plug 'junegunn/fzf.vim'
  " Git wrapper
  Plug 'tpope/vim-fugitive'
  " Enhanced status line
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Explorer
  Plug 'preservim/nerdcommenter'
  Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'}
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  " Session support
  Plug 'tpope/vim-obsession'
  Plug 'djoshea/vim-autoread'
  Plug 'severin-lemaignan/vim-minimap'
  " Editor support
  Plug 'plasticboy/vim-markdown'
  Plug 'Yggdroot/indentLine'
  Plug 'jiangmiao/auto-pairs'
call plug#end()

" Color config
if (has("termguicolors"))
  set termguicolors
endif
set background=dark
colorscheme gruvbox

" Mapping configs
let mapleader=";"
" <SPACE> to toggle NERD Tree
nnoremap <silent> <Space> :NERDTreeToggle<CR>

" Auto start NERD if open a directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | wincmd p | endif

" Auto start NERD tree if no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | exe 'NERDTree' | endif

" Neovim config
syntax enable
syntax on
set undofile
set ruler
set number
set tabstop=4 
set shiftwidth=4
set expandtab
set smartindent
set smartcase
set incsearch
set hidden
set wildmenu
set wildmode=list:longest
set mouse=a
set backspace=indent,eol,start
set clipboard+=unnamed
set paste

" Config speed
set ttyfast
set lazyredraw

" File type
filetype on
filetype plugin on
filetype indent on

