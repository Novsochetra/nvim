
"Autoload the current file directory with NERDTree"
augroup vimrc_autocmd
  " autocmd!
  autocmd StdinReadPre * let s:std_in=1
  " autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

  " start NERDTree without open the NERDTree
  autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | wincmd p | ene | exe 'cd '.argv()[0] | endif

  " Close preview window when completion is done.
  " autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

  au FileType html let b:coc_root_patterns = ['.git', '.env', 'tailwind.config.js', 'tailwind.config.cjs']

  autocmd VimEnter * call  OpenTerm()
augroup END

function! OpenTerm()
  " Open the dashboard automatically when starting nvim with no file or with a specific file
  if argc() == 0 || !filereadable(expand("%:p"))
    Dashboard
  end
endfunction


command ExecPostman set splitright | only | vnew | set filetype=sh | read !sh #

nnoremap <F2> :ExecPostman <Enter><C-w>h

" vscode keybinding
nnoremap <A-Up> ddkP
nnoremap <A-Down> ddp
