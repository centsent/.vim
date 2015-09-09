"""""""""""""""""""""""
" => Theme setting
"""""""""""""""""""""""
set t_Co=256
set background=dark
" Colorscheme
colorscheme desert
"let g:solarized_termcolors=256
"let g:solarized_termtrans = 1
"colorscheme solarized

" Set font according to system
if has("mac") || has("macunix")
  set gfn=Source\ Code\ Pro:h12,Menlo:h12
endif

" Use Unix as the standard file type
set ffs=unix,dos,mac

"Always show current position
set ruler
" Show line number
set nu
" Highlight current line
set cul 

" Highlight current column
"set cu

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Show commands
set showcmd

" For regular expressions turn magic on
set magic

" Don't redraw while executing macros (good performance config)
set lazyredraw

" 1 tab == 2 spaces
set sw=2
set ts=2
set softtabstop=2

" No gui options
set go=

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Use spaces instead of tabs
set et

" Be smart when using tabs ;)
set smarttab

" Smart indent
set si

" Auto indent
set ai

" Wrap lines
set wrap

set cindent

" Linebreak on 500 characters
set lbr
set tw=1000

set fo+=mB
set sm
set selection=inclusive

" Turn on the WiLd menu
set wildmenu

set mousemodel=popup

" No annoying sound on errors
set noeb

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

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Always show the status line
set laststatus=2

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
"set hid

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

" Set utf8 as standard encoding and en_US as the standard language
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

" Enable syntax highlighting
syntax enable
syntax on
" Enable filetype plugins
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
"map <space> /
"map <c-space> ?

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keyboard shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map! <C-Z> <Esc>zzi
map! <C-O> <C-Y>,
map <C-A> ggVG$"+y
map <F12> gg=G
map <C-w> <C-w>w
imap <C-k> <C-y>,
imap <C-j> <ESC>
"map <C-v> "*pa
imap <C-v> <Esc>"*pa
imap <C-a> <Esc>^
imap <C-e> <Esc>$
vmap <C-c> "+y

"""""""""""""""""""""""
" => Taglist settings
"""""""""""""""""""""""
let Tlist_Show_One_File = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
nmap tl :Tlist<cr>

"""""""""""""""""""""""""""
" => Autoreload .vimrc
"""""""""""""""""""""""""""
autocmd! bufwritepost .vimrc source ~/.vimrc 
map <silent> <leader>ss :source ~/.vimrc<cr>
map <silent> <leader>ee :e ~/.vimrc<cr>  

"""""""""""""""""""""""
" => ctrlp settings
"""""""""""""""""""""""
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif     " MacOSX/Linux
"set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.pyc,*.png,*.jpg,*.gif  " Windows
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = '\v\.(exe|so|dll)$'
let g:ctrlp_extensions = ['funky']

"""""""""""""""""""""""
" => NERDTree settings
"""""""""""""""""""""""
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore=['\.pyc']
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeShowBookmarks=1
"nnoremap f :NERDTreeToggle
"let g:nerdtree_tabs_open_on_console_startup=1

"""""""""""""""""""
" => Syntastic
"""""""""""""""""""
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_html_tidy_exec = 'tidy5'
let g:syntastic_python_checkers=['pylint']
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
let g:syntastic_javascript_checkers = ['eslint']

"""""""""""""""""""""""""""
" => Airline settings
"""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1

"""""""""""""""""""""""""""
" => EasyMotion settings
"""""""""""""""""""""""""""
" let g:EasyMotion_do_mapping = 0 " Disable default mappings
" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)
" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

"""""""""""""""""""""""""""
" => Vundle settings
"""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Keep Plugin commands between vundle#begin/end.
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'wincent/command-t'
Plugin 'easymotion/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'The-NERD-Commenter'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'scrooloose/syntastic'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'tpope/vim-rails'
Plugin 'python-imports.vim'
Plugin 'last_edit_marker.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'ctrlp-modified.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'synmark.vim'
Plugin 'jslint.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'digitaltoad/vim-jade'
Plugin 'kchmck/vim-coffee-script'
Plugin 'juvenn/mustache.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'mileszs/ack.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-multiple-cursors'
Plugin 'vim-scripts/nginx.vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mxw/vim-jsx'
" All of your Plugins must be added before the following line
call vundle#end()            " required

" Use Node.js for JavaScript interpretation, only work for me on Yosemite
let $JS_CMD='node'

