
"Autoload the current file directory with NERDTree"
augroup vimrc_autocmd
  " autocmd!
  autocmd StdinReadPre * let s:std_in=1
  " autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

  " start NERDTree without open the NERDTree
  autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | wincmd p | ene | exe 'cd '.argv()[0] | endif

  " Close preview window when completion is done.
  " autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

  autocmd FileType html,css EmmetInstall
augroup END
