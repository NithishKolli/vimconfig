" Sets how many lines of history VIM has to remember
set history=500

" Set to auto read when a file is changed from the outside
set autoread

set wildmenu
set wildmode=longest:list,full

"Always show current position
set ruler

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
""" set lazyredraw 

" For regular expressions turn magic on
""" set magic

" Show matching brackets when text indicator is over them
set showmatch 

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1

" Highlight Syntax
syntax enable

colorscheme solarized

set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

"Ignore Compilation files
set wildignore+=*.pyc,*.pkl,*.npy

" Turn backup off
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"Show Line Numbers
set number

set guifont=Consolas:h10
"set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\
" \ [%l/%L\ (%p%%)

set shiftround
"set ruler
set selection=exclusive
"set selectmode=mouse,key
set window=61

"let python_highlight_all=1
set lines=30 columns=100


set nocompatible

"Vundle Code
"
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" Let Vundle manage Vundle

Plugin 'gmarik/vundle'

"All My Plugins 

"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'klen/python-mode'

"Plugin for git
Plugin 'tpope/vim-fugitive'

" Python Indentation
Plugin 'vim-scripts/indentpython.vim'

"Syntax Checker
Plugin 'scrooloose/syntastic'

"Commenter
"Bundle 'scrooloose/nerdcommenter'

"PEP8 for Python
Plugin 'nvie/vim-flake8'

" Plugin to manage recently used files
Plugin 'https://github.com/vim-scripts/mru.vim'

"Plugin for Airline and its Themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Plugin to display Tags
Plugin 'majutsushi/tagbar'

" Bundle 'The-NERD-Commenter'

call vundle#end()

filetype on
filetype plugin on
filetype indent on


" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

map <F2> <ESC>:NERDTreeToggle<RETURN>
map <F4> <ESC>:NERDTree D:\Scripts\Python\NLP<RETURN>
map <F5> <ESC>:NERDTree D:\_Scripts\Python<RETURN>

nmap <F8> :TagbarToggle<CR>
