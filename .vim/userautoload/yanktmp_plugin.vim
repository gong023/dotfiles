map <silent> sy :call YanktmpYank()<CR>
map <silent> sp :call YanktmpPaste_p()<CR>
map <silent> sP :call YanktmpPaste_P()<CR>
if has("win32")
    let g:yanktemp_file = $TEMP./'vimyanktemp'
endif
