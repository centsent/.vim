"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plug settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

Plug 'fatih/molokai'

Plug 'djoshea/vim-autoread'

Plug 'vim-syntastic/syntastic'

Plug 'editorconfig/editorconfig-vim'

Plug 'tpope/vim-fugitive'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'pechorin/any-jump.vim'

Plug 'sheerun/vim-polyglot'

Plug 'honza/vim-snippets'

Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': ':CocInstall'}

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

Plug 'wakatime/vim-wakatime'

" All of your Plugins must be added before the following line
call plug#end()            " required

" There is a bug while installing colorscheme via plugin manager.
" https://github.com/altercation/vim-colors-solarized/issues/104#issuecomment-210934598
" So we have to specify colorscheme here.
colorscheme molokai
