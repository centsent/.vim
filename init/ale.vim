let g:ale_linters = {
                  \'rust': ['analyzer']
                  \}

let g:ale_fixers  = {
                  \'rust': ['rustfmt']
                  \}

let g:ale_linters_explicit = 1
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_completion_autoimport = 1

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1


augroup ale
  autocmd!

  nmap gd :ALEGoToDefinition<CR>
  nmap gr :ALERename<CR>
  nmap ne <Plug>(ale_next_wrap)
  nmap pe <Plug>(ale_previous_wrap)
augroup END
