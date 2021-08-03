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
autocmd! BufWritePost *.vim,.vimrc source ~/.vimrc 
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
nnoremap <tab> <c-w>w
" Useful mappings for managing tabs
nnoremap <C-t> :tabnew<CR>
nnoremap <leader>p :tabprevious<CR>
nnoremap <leader>n :tabnext<CR>
" Split windows
" New horizontal split(editing a new empty buffer)
nnoremap <space>1 <c-w>s
" :vsplit window vertically(editing current buffer)
nnoremap <space>2 <c-w>v

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Insert Mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <C-j> | Escaping!
 inoremap <C-j> <ESC>
" inoremap <esc> <nop>

inoremap <leader>, <esc>:w<cr>

"" Combining move and scroll
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
