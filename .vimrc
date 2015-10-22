"""""""""""""""""""""""
" => Theme setting
"""""""""""""""""""""""
set t_Co=256
set background=dark
" Colorscheme
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized 

set title
set showmode
" Set font according to system
set guifont=Liberation_Mono_for_Powerline:h14,Source\ Code\ Pro:h14,Menlo:h14
" Use Unix as the standard file type
set fileformats=unix,dos,mac
"Always show current position
set ruler
" Show line number
set number
" Highlight current line
set cursorline
" Highlight current column
set colorcolumn=81
"set cursorcolumn
set completeopt=longest,menu
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
" Set 7 lines to the cursor - when moving vertically using j/k
set scrolloff=7
" Show commands
set showcmd
" For regular expressions turn magic on
set magic
" Don't redraw while executing macros (good performance config)
set lazyredraw
" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
set softtabstop=2
" No gui options
set go=
" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" Smart indent
set smartindent
" Auto indent
set autoindent

set wrap
set showbreak=↪\ 

" for c lang
set cindent

" Linebreak on 1000 characters 
set linebreak
set textwidth=1000

set formatoptions+=mB
set sm
set selection=inclusive

" Turn on the WiLd menu
set wildmenu
"set mousemodel=popup
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

" Cursor shape
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" Enable syntax highlighting
syntax enable
syntax on
" Enable filetype plugins
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

" In many terminal emulators the mouse works just fine, thus dsabale it.
if has('mouse')
  set mouse-=a
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
noremap <silent><leader>/ :nohlsearch<CR>

" Fast saving
nnoremap <leader>w :w!<cr>
" Quickly close the current window
nnoremap <leader>q :q<CR>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Useful mappings for managing tabs
nnoremap <C-t> :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>
nnoremap <leader>p :tabprevious<CR>
nnoremap <leader>n :tabnext<CR>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tm :tabmove 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keyboard shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ----------------------------------------------------------------------------
" <tab> | Circular windows navigation
" ----------------------------------------------------------------------------
nnoremap <tab>   <c-w>w

" <C-j> | Escaping!
inoremap <C-j> <ESC>
inoremap <esc> <nop>
" remap U to <C-r> for easier redo
nnoremap U <C-r>
" copy
vnoremap <Leader>y "+y
vnoremap <Leader>p "+p
" delete line
inoremap <C-d> <esc>ddi

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
let g:ctrlp_custom_ignore = '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$'
"let g:ctrlp_working_path_mode=0
let g:ctrlp_extensions = ['funky']

"""""""""""""""""""""""
" => NERDTree settings
"""""""""""""""""""""""
"autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore=['\.pyc']
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeShowBookmarks=1
nnoremap <leader>f :NERDTreeToggle<CR>
let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_open_on_console_startup=0

"""""""""""""""""""
" => Syntastic
"""""""""""""""""""
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=1
let g:syntastic_html_tidy_exec='tidy5'
let g:syntastic_python_checkers=['pyflakes']
"let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
let g:syntastic_javascript_checkers=['eslint']

"""""""""""""""""""""""""""
" => Airline settings
"""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:Powerline_symbols='fancy'
let g:airline_theme='wombat'

""""""""""""""""""""""""""""""""""
" => Tagbar
""""""""""""""""""""""""""""""""""
nnoremap tb :TagbarToggle<CR>

"""""""""""""""""""""""""""
" => EasyMotion settings
"""""""""""""""""""""""""""
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

"""""""""""""""""""""""""""""""""""
" => jsbeautify
"""""""""""""""""""""""""""""""""""
" for js
"autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
"autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
"autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
nnoremap <c-f> :Autoformat<CR>

"""""""""""""""""""""""""""""""""""
" => vim-go
"""""""""""""""""""""""""""""""""""
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>e <Plug>(go-rename)
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

"""""""""""""""""""""""""""""""""
" => tern-for-vim
"""""""""""""""""""""""""""""""""
let g:tern_show_signature_in_pum = 1
" Rename
nnoremap <leader>tr :TernRename<cr>

""""""""""""""""""""""""""""""""""n
" => python-mode
"""""""""""""""""""""""""""""""""""
let g:pymode_rope = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_complete_on_dot = 0

"""""""""""""""""""""""""""""""""""
" => ultisnips
"""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"""""""""""""""""""""""""""""""""""
" => YouCompleteMe
"""""""""""""""""""""""""""""""""""
let g:ycm_use_ultisnips_completer = 1
let g:ycm_goto_buffer_command = 'horizontal-split'
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Go to home and end using capitalized directions
noremap H ^
noremap L $

" Move a line of text 
nnoremap <c-j> mz:m+<cr>`z
nnoremap <c-k> mz:m-2<cr>`z
vnoremap <c-j> :m'>+<cr>`<my`>mzgv`yo`z
vnoremap <c-k> :m'<-2<cr>`>my`<mzgv`yo`z

map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" Treat long lines as break lines (useful when moving around in them)
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

" Map ; to : and save a million keystrokes
" ex mode commands made easy
nnoremap ; :

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
Plugin 'tpope/vim-rails'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'ctrlp-modified.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'altercation/vim-colors-solarized'
Plugin 'digitaltoad/vim-jade'
Plugin 'juvenn/mustache.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mileszs/ack.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-multiple-cursors'
Plugin 'marijnh/tern_for_vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mxw/vim-jsx'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'python-syntax'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-haml'
Plugin 'klen/python-mode'
Plugin 'fatih/vim-go'
Plugin 'elixir-lang/vim-elixir'
Plugin 'udalov/kotlin-vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'flazz/vim-colorschemes'
" All of your Plugins must be added before the following line
call vundle#end()            " required

" Use Node.js for JavaScript interpretation, only work for me on Yosemite
let $JS_CMD='node'
