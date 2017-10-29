nnoremap <silent> gb :GoBuild<CR>
nnoremap <silent> gd :GoDef<CR>
nnoremap <silent> gdd :GoDescribe<CR>
nnoremap <silent> gf :GoFmt<CR>
nnoremap <silent> gr :GoReferrers<CR>
nnoremap <silent> gt :GoTest<CR>
nnoremap <silent> gl :GoMetaLinter<CR>
nnoremap <silent> gal :GoAlternate<CR>
nnoremap <silent> gdc :GoDeclsDir<CR>
nnoremap <silent> gc :GoCallstack<CR>

let g:go_auto_type_info = 1
autocmd FileType go nmap <Leader>i <Plug>(go-info)

" cheet sheet
" GoCall, GoRename <newName>, GoImpl
