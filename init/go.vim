"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => golang
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_fmt_command = "goreturns"

autocmd FileType go nmap ne :cnext<CR>
autocmd FileType go nmap pe :cprevious<CR>
