""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Wrap text
set wrap
" Show line numbers
set number
" Set default encoding to UTF-8
set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
" Prefer Unix over Windows over MacOS formats
set fileformats=unix,dos,mac
" Show me what I'm typing
set showcmd
" Don't create annoying backup files
set nobackup
" Don't use swapfile
set noswapfile
" Automatically read changed files
set autoread
" Automatically save before :next, :make etc.
set autowrite
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase
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
" Enable Autoindent
set autoindent
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch

" Fix paste bug triggered by the above inoremaps
" https://vimhelp.appspot.com/term.txt.html#xterm-bracketed-paste 
set t_BE=

" Enable to copy to clipboard for operations like yank, delete, change and put
" http://stackoverflow.com/questions/20186975/vim-mac-how-to-copy-to-clipboard-without-pbcopy
if has('unnamedplus')
  set clipboard^=unnamed
  set clipboard^=unnamedplus
endif

" This enables us to undo files even if you exit Vim.
if has('persistent_undo')
  set undofile
  set undodir=~/.config/vim/tmp/undo//
endif

" Enter automatically into the files directory
autocmd BufEnter * silent! lcd %:p:h
