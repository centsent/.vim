""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Basic settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enables us Vim specific features
set nocompatible
set title
set showmode
set cursorcolumn
" Don't redraw while executing macros (good performance config)
set lazyredraw
"Always show current position
set ruler
" Highlight current line
set cursorline
set colorcolumn=100
" No gui options
set go=
set whichwrap+=<,>,h,l
set linespace=0
set selection=exclusive
set selectmode=mouse,key
set report=0
set fillchars=vert:\ ,stl:\ ,stlnc:\
set matchtime=1
set scrolloff=3
set iskeyword+=_,$,@,%,#,-,.
" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2
set showbreak=↪\ 
" Turn on the WiLd menu
set wildmenu
" set mousemodel=popup
" No annoying sound on errors
set noerrorbells
" Confirmation on unsave/readonly
set confirm
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
" Height of the command bar
set cmdheight=2
" A buffer becomes hidden when it is abandoned
set hid
" Enable syntax highlighting
syntax enable
syntax on
" Enable filetype plugins
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on
" Set 7 lines to the cursor - when moving vertically using j/k
set scrolloff=7
" For regular expressions turn magic on
set magic
" Sets how many lines of history VIM has to remember
set history=500
