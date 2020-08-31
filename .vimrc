"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plug settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let is_init=0
let plug_vim = expand('~/.vim/autoload/plug.vim')
if !filereadable(plug_vim)
  echo "Installing Plug.vim..."
  echo ""
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let is_init=1
endif

set nocompatible

" Fix paste bug triggered by the above inoremaps
" https://vimhelp.appspot.com/term.txt.html#xterm-bracketed-paste 
set t_BE=

call plug#begin('~/.vim/bundle')

" Keep Plugin commands between plug#begin/end.
Plug 'easymotion/vim-easymotion'
" nerdtree group dependencies
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } | Plug 'scrooloose/nerdcommenter'
Plug 'vim-syntastic/syntastic'
Plug 'editorconfig/editorconfig-vim'
" ctrlp group dependencies
Plug 'kien/ctrlp.vim' | Plug 'tacahiroy/ctrlp-funky'
Plug 'djoshea/vim-autoread'
" All of your Plugins must be added before the following line
call plug#end()            " required

if is_init == 1
  echo "Installing Bundles, please ignore key map error messages"
  echo ""
  :PlugInstall
endif
"}}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Theme setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
set background=dark


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Basic settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set title
set showmode
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

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
" func! DeleteTrailingWS()
  " exe "normal mz"
  " %s/\s\+$//ge
  " exe "normal `z"
" endfunc
" autocmd BufWrite *.py :call DeleteTrailingWS()
" autocmd BufWrite *.coffee :call DeleteTrailingWS()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Remap keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map ; to :  and save a million keystrokes
" ex mode commands made easy
nnoremap ; :
let mapleader = ","
let g:mapleader = ","
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?
" Disable arrow keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Autoreload .vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd! bufwritepost .vimrc source ~/.vimrc 
map <silent> <leader>ss :source ~/.vimrc<cr>
map <silent> <leader>ee :e ~/.vimrc<cr> 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Normal Mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <silent><leader>/ :nohlsearch<CR>
" Fast saving
nnoremap <leader>w :w!<cr>
" Quickly close the current window
nnoremap <leader>q :q<CR>
" Go to home and end using capitalized directions
noremap H ^
noremap L $
" remap U to <C-r> for easier redo
nnoremap U <C-r>
" Treat long lines as break lines (useful when moving around in them)
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j
" Move a line of text 
nnoremap <c-j> mz:m+<cr>`z
nnoremap <c-k> mz:m-2<cr>`z
" <tab> | Circular windows navigation
nnoremap <tab>   <c-w>w
" Useful mappings for managing tabs
nnoremap <C-t> :tabnew<CR>
nnoremap <leader>p :tabprevious<CR>
nnoremap <leader>n :tabnext<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Insert Mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <C-j> | Escaping!
inoremap <C-j> <ESC>
inoremap <esc> <nop>
" delete line
" inoremap <C-d> <esc>ddi

" Combining move and scroll
inoremap <silent> <C-d> <C-\><C-O><C-D>
inoremap <silent> <C-u> <C-\><C-O><C-U>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual Mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" copy
vnoremap <Leader>y "+y
" paste
vnoremap <Leader>p "+p
" cut
vnoremap <leader>x "+d

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore=['\.pyc']
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeShowBookmarks=1
nnoremap <leader>f :NERDTreeToggle<CR>
let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_open_on_console_startup=0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ctrlp settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif     " MacOSX/Linux
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
" Ignore node modules
set wildignore+=*/node_modules/*
" Disable temp and backup files
set wildignore+=*.swp,*~,._*
"set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.pyc,*.png,*.jpg,*.gif  " Windows
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$'
"let g:ctrlp_working_path_mode=0
let g:ctrlp_extensions = ['funky']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EasyMotion settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_smartcase = 1
nnoremap <leader>. <Plug>(easymotion-repeat)
map <leader>h <Plug>(easymotion-linebackward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <leader>l <Plug>(easymotion-lineforward)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
if matchstr(local_eslint, "^\/\\w") == ''
    let local_eslint = getcwd() . "/" . local_eslint
endif
if executable(local_eslint)
    let g:syntastic_javascript_eslint_exec = local_eslint
endif

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=1
let g:syntastic_html_tidy_exec='tidy'
let g:syntastic_python_checkers=['pyflakes']
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_java_checkers=['javac']
let g:syntastic_java_javac_classpath = './lib/*.jar;./src'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => makefile
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile,BufRead *[mM]akefile setf make
autocmd FileType make setlocal noexpandtab

