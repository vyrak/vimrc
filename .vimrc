" Don't want vi compatibility.  Necessary for lots of cool vim things
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
Bundle 'surround.vim'
Bundle 'repeat.vim'
Bundle 'matchit.zip'
Bundle 'quickfonts.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'juvenn/mustache.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'groenewege/vim-less'
Bundle 'mileszs/ack.vim'
Bundle 'slim-template/vim-slim'
Bundle 'scrooloose/syntastic'
"Bundle 'pangloss/vim-javascript' autoindent no work
"Bundle 'mxw/vim-jsx'
Bundle 'jsx/jsx.vim'

" 'altercation/vim-colors-solarized' vundle required
set background=dark
if has("gui")
  colorscheme solarized
endif

" 'NERDtree' vundle required
nmap ,n :NERDTreeToggle<CR>
nmap ,m :NERDTreeClose<CR>:NERDTreeFind<CR>

" required for vundle
filetype plugin indent on

syntax on
let mapleader=","

" Source rc
map <Leader>s :source $MYVIMRC<CR>

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

" Keeps content of initial paste
vnoremap p "_dP

map <F1> <Nop>

syntax enable

" Mac clipboard
set clipboard=unnamed

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
set listchars=tab:·>,trail:·,extends:#,nbsp:·

" No blinking
set novisualbell

" No noise
set noerrorbells

" Always show status line
set laststatus=0

set selection=exclusive

" Change directory into path of the file
" autocmd bufenter * silent! lcd %:p:h

autocmd bufenter *.slim silent! set filetype=slim

if has("gui_running")
  set guioptions -=m
  set guioptions -=T
  set guioptions -=r
  set guifont=Anonymous_Pro:h14

  " Maximaize window
  " autocmd guienter * simalt ~x
endif

set wildignore +=*/.git/*
set wildignore +=*.ipc
set wildignore +=*.swp

let g:ctrlp_working_path_mode = 'w'
let g:ctrlp_custom_ignore = '\v(vendor|node_modules|bower_components)\/'

let g:syntastic_javascript_checkers = ['jsxhint']
