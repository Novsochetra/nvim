" ************************* Buffer Configuration ************************* "
  "nnoremap ;b <C-^>
  nnoremap ;b1 :execute "buffer ".GetBufferByIndex(1)<enter>
  nnoremap ;b2 :execute "buffer ".GetBufferByIndex(2)<enter>
  nnoremap ;b3 :execute "buffer ".GetBufferByIndex(3)<enter>
  nnoremap ;b4 :execute "buffer ".GetBufferByIndex(4)<enter>
  nnoremap ;b5 :execute "buffer ".GetBufferByIndex(5)<enter>
  nnoremap ;b6 :execute "buffer ".GetBufferByIndex(6)<enter>
  nnoremap ;b7 :execute "buffer ".GetBufferByIndex(7)<enter>
  nnoremap ;b8 :execute "buffer ".GetBufferByIndex(8)<enter>
  nnoremap ;b9 :execute "buffer ".GetBufferByIndex(9)<enter>
" ************************* End Buffer Configuration ************************* "

function! GetBufferByIndex(idx)
	let index = 0
  let buffer_lists = getbufinfo({'buflisted': 1})
  while index < len(buffer_lists)
    if a:idx == index
      "echo "input_index: ".buffer_lists[index].lnum." => ".buffer_lists[index].name
      echo buffer_lists[index].bufnr
      return buffer_lists[index].bufnr
      break
    endif
	   let index = index + 1
	endwhile
endfunction

