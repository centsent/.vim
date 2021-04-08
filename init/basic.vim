""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Basic settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
" Fix paste bug triggered by the above inoremaps
" https://vimhelp.appspot.com/term.txt.html#xterm-bracketed-paste 
set t_BE=
set title
set showmode
set cursorcolumn
" Don't redraw while executing macros (good performance config)
set lazyredraw
"Always show current position
set ruler
" Show line number
set number
" Highlight current line
set cursorline
set colorcolumn=100
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
" No gui options
set go=
" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
set softtabstop=2
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" Smart indent
set smartindent
" Auto indent
set autoindent
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set linespace=0
set wildmenu
set selection=exclusive
set selectmode=mouse,key
set report=0
set fillchars=vert:\ ,stl:\ ,stlnc:\
set showmatch
set matchtime=1
set scrolloff=3
set iskeyword+=_,$,@,%,#,-,.
" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2
" Wrap text
set wrap
set showbreak=↪\ 
" Turn on the WiLd menu
set wildmenu
" set mousemodel=popup
" No annoying sound on errors
set noerrorbells
" Set to auto read when a file is changed from the outside
set autoread
" Auto saving file
set autowrite
" Confirmation on unsave/readonly
set confirm
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
" Always show the status line
set laststatus=2
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
" Set utf8 as standard encoding and en_US as the standard language
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
" Use Unix as the standard file type
set fileformats=unix,dos,mac
" Set 7 lines to the cursor - when moving vertically using j/k
set scrolloff=7
" Show commands
set showcmd
" For regular expressions turn magic on
set magic
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase
" Sets how many lines of history VIM has to remember
set history=500
" No preview window
set completeopt-=preview
