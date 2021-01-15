" Ultra fix for this M/F plugin for template literals

let g:_tmp_last_view = ''
let g:_tmp_curr_view = ''

function SaveView()
  set lazyredraw
  let g:_tmp_last_view = winsaveview()
endfunction
  
function LoadView()
  let g:_tmp_curr_view = winsaveview()
  let g:_tmp_curr_view.leftcol=g:_tmp_last_view.leftcol
  call winrestview(g:_tmp_curr_view)
  set nolazyredraw
endfunction

nnoremap <silent> o      :call SaveView()<CR>o<c-o>:call LoadView()<CR>
nnoremap <silent> O      :call SaveView()<CR>O<c-o>:call LoadView()<CR>

inoremap <silent> > <c-o>:call SaveView()<CR>><c-o>:call LoadView()<CR>
inoremap <silent> < <c-o>:call SaveView()<CR><<c-o>:call LoadView()<CR>
