"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plug settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

Plug 'djoshea/vim-autoread'

Plug 'jiangmiao/auto-pairs'

Plug 'preservim/nerdcommenter'

Plug 'vim-airline/vim-airline'

Plug 'editorconfig/editorconfig-vim'

Plug 'tpope/vim-fugitive'

Plug 'sheerun/vim-polyglot'

Plug 'AndrewRadev/splitjoin.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': ':CocInstall'}

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

Plug 'wakatime/vim-wakatime'

" All of your Plugins must be added before the following line
call plug#end()            " required
