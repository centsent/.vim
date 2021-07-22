"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => golang
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_fmt_command = "goreturns"
let g:go_rename_command = "gopls"
let g:go_list_type = "quickfix"
let g:go_metalinter_command = 'golangci-lint'

let g:go_auto_type_info = 1
let g:go_auto_sameids = 1

let g:go_autodetect_gopath = 1

let g:go_highlight_types = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1

" run :GoBuild or :GoTestCompile based on the go file.
" build_go_files is a custom function that builds or compiles the test file.
" It calls :GoBuild if its a Go file, or :GoTestCompile if it's a test file.
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

augroup go
  autocmd!

  " Open :GoDeclsDir with ctrl-g
  autocmd FileType go nmap <C-g> :GoDeclsDir<CR>
  autocmd FileType go imap <C-g> <esc>:<C-u>GoDeclsDir<CR>
  " Quickly jump between a Go source cod and its test file.
  autocmd FileType go nmap ga :GoAlternate<CR>
  " Rename identifiers
  autocmd FileType go nmap gr :GoRename 
  " Next quickfix error
  autocmd FileType go nmap ne :cnext<CR>
  " Previous quickfix error
  autocmd FileType go nmap pe :cprevious<CR>
  " :GoBuild and :GoTestCompile
  autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
  " :GoRun
  autocmd FileType go nmap <leader>r <Plug>(go-run)
  " :GoTest
  autocmd FileType go nmap <leader>t <Plug>(go-test)
augroup end

