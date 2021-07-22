let g:coc_global_extensions = [
      \'coc-diagnostic',
      \'coc-dash-complete', 'coc-dot-complete', 'coc-just-complete',
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
      \'coc-rls', 'coc-rust-analyzer',
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
