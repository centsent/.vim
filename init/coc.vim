let g:coc_global_extensions = [
      \'coc-diagnostic',
      \'coc-lists',
      \'coc-snippets',
      \'coc-git',
      \'coc-json', 'coc-yaml',
      \'coc-clangd',
      \'coc-tsserver',
      \'coc-pyright',
      \]

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" Make <tab> used for trigger completion, completion confirm, snippet expand and jump like VSCode.
inoremap <silent><expr> <Tab>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

augroup coc
  autocmd!

  " Highlight the symbol and its references when holding the cursor.
  autocmd CursorHold * silent call CocActionAsync('highlight')

  " Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
  nmap pe <Plug>(coc-diagnostic-prev)
  nmap ne <Plug>(coc-diagnostic-next)

  " GoTo code navigation.
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gf <Plug>(coc-references)
  " Symbol renaming.
  nmap <silent>gr  <Plug>(coc-rename)

  " Mappings for CoCList
  " Find symbol of current document.
  nnoremap <silent><nowait> <c-g>  :<C-u>CocList outline<cr>
  nnoremap <silent><nowait> <c-p>  :<C-u>CocList files<cr>
  " Search workspace symbols.
  nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>

  " Show documentation of symbol under cursor
  nnoremap <silent> <space>h :call CocActionAsync('doHover')<cr>
augroup end
