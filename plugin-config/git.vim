" ************************* Git Configuration ************************* "
  " Show git difftool and auto focus on git difftool
  nmap <silent> ;gt <cmd>Git difftool<enter><C-j> 

  " Show git diff in verticall split
  nmap <silent> ;gd :Gvdiffsplit<enter>

  " Show git status
  " nmap <silent> ;gs :GFiles?<enter>
  " nmap <silent> ;gs <cmd>lazygit<enter>
  " Show git blame 
  nmap <silent> ;gb :Git blame<enter>

  " Show git log in fullscreen and autofocus on log list
  nmap <silent> ;gl :GlLog<enter><ESC>:q<C-j><C-l>

  " Add current file
  nmap <silent> ;gaa :Gwrite<enter>
" ************************* End Git Configuration ************************* "
