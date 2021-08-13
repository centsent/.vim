let g:coc_global_extensions = [
      \'coc-diagnostic',
      \'coc-dash-complete', 'coc-dot-complete', 'coc-just-complete',
      \'coc-snippets',
      \'coc-git',
      \'coc-clangd', 'coc-clang-format-style-options', 'coc-cmake',
      \'coc-json', 'coc-yaml', 'coc-toml',
      \'coc-tsserver',
      \'coc-prettier', 'coc-eslint',
      \'coc-html', 'coc-htmlhint', 'coc-html-css-support', 'coc-emmet',
      \'coc-css', 'coc-cssmodules',
      \'coc-deno', 'coc-denoland',
      \'coc-go', 
      \'coc-graphql',
      \'coc-pyright',
      \'coc-julia', 
      \'coc-rust-analyzer',
      \'coc-vimlsp',
      \]

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" Make <tab> used for trigger completion, completion confirm, snippet expand and jump like VSCode.
inoremap <silent><expr> <TAB>
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
  "nmap <silent> gr <Plug>(coc-references)
  " Symbol renaming.
  nmap <silent>gr  <Plug>(coc-rename)

  " Mappings for CoCList
  " Show all diagnostics.
  nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
  " Find symbol of current document.
  nnoremap <silent><nowait> <c-g>  :<C-u>CocList outline<cr>
  " Search workspace symbols.
  nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
  " Do default action for next item.
  nnoremap <silent><nowait> <space>j :<C-u>CocNext<CR>
  " Do default action for previous item.
  nnoremap <silent><nowait> <space>k :<C-u>CocPrev<CR>
  " Resume latest coc list.
  nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
augroup end
