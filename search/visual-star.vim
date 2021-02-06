xnoremap *:<C-u>call <SID>VSetSearch()<CR>/<CR>=@/<CR><CR>
xnoremap #:<C-u>call <SID>VSetSearch()<CR>?<CR>=@/<CR><CR>

function! s:VSetSearch()
  let temp = @
  snorm! gv"sy
  let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
  let @s = temp
endfunction
