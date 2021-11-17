augroup rust
  autocmd!

  let g:rustfmt_autosave = 1
  autocmd FileType rust nmap <leader>r :RustRun<cr>
  autocmd FileType rust nmap <leader>t :RustTest<cr>
augroup END
