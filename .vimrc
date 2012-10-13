" Don't want vi compatibility.  Necesary for lots of cool vim things
set nocompatible

" vundle bootstrap
filetype off
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" vundle bundles
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'

" 'altercation/vim-colors-solarized' vundle required
set background=dark
colorscheme solarized

" 'NERDtree' vundle required
nmap ,n :NERDTreeToggle<CR>
nmap ,m :NERDTreeClose<CR>:NERDTreeFind<CR>

" required for vundle
filetype plugin indent on

syntax on
let mapleader=","

" Swap file directory
set directory=$TMP

map th :tabfirst<CR>
map tj :tabprev<CR>
map tk :tabnext<CR>
map tl :tablast<CR>
map tt :tabedit<Space>
map tn :tabnext<Space>
map tm :tabm<Space>

" Switch between tiles
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Move tile around
map <A-H> <C-w>H
map <A-J> <C-w>J
map <A-K> <C-w>K
map <A-L> <C-w>L

" Resize current tile
map <A-k> <C-w>+
map <A-j> <C-w>-
map <A-l> <C-w>>
map <A-h> <C-w><

" Keeps selection when changing indentation
vnoremap < <gv
vnoremap > >gv

map <F1> <Nop>

syntax enable

" Enable error files & error jumping.
set cf

" Yanks go on clipboard instead.
set clipboard+=unnamed

" Number of things to remember in history.
set history=256

" Writes on make/shell commands
set autowrite

" Ruler on
set ruler

" Line numbers on
set number

" Line wrapping off
set nowrap

" Time to wait after ESC (default causes an annoying delay)
set timeoutlen=250

" Tabs are 2 spaces
set tabstop=2

" Backspace over everything in insert mode
set backspace=2

" Tabs under smart indent
set shiftwidth=2

set incsearch
set hlsearch
set formatoptions=tcqr
set autoindent
set smarttab
set expandtab

" Show matching brackets.
set showmatch

" Bracket blinking.
set matchtime=5

set list
set listchars=tab:>�,trail:�,extends:#,nbsp:�
" No blinking
set novisualbell

" No noise
set noerrorbells

" Always show status line
set laststatus=0

set selection=exclusive

" Change directory into path of the file
autocmd bufenter * silent! lcd %:p:h

if has("gui_running")
  set guioptions -=m
  set guioptions -=T
  set guioptions -=r
  set guifont=Anonymous_Pro:h11

  " Maximaize window
  au guienter * simalt ~x
endif