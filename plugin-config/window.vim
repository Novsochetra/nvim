  " ************************* Window Configuration ************************* "
  "Short Cut"
  map <C-h> <C-w>h
  map <C-j> <C-w>j
  map <C-k> <C-w>k
  map <C-l> <C-w>l

  " we need to escape \| in order it to work
  nmap <silent> ,f :wincmd<Space><S-\|><enter>
  nmap <silent> ,= :wincmd =<enter> 
  nmap <silent> ,<Tab> :vertical resize +10<enter>
  nmap <silent> ,<S-Tab> :vertical resize -10<enter>
  " move current pane to next
  nmap <silent> ,l <C-w>x<C-w>l
  " move current pane to previous
  nmap <silent> ,h <C-w>x<C-w>h

  " switch pane
  nmap <silent> ,2 <C-w>x
  
  " Move curent pane to far right
  nmap <silent> ,3 <C-w>L

  " Move curent pane to far left
  nmap <silent> ,1 <C-w>H

" ************************* End Window Configuration ************************* "

