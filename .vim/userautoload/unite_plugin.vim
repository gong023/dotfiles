" 入力モードで開始
let g:unite_enable_start_insert=1
nnoremap ff :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
" inoremap <silent> <C-f> <ESC>:<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap fm :<C-u>Unite buffer file_mru<CR>
" unite.vim上でのキーマッピング
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  " 単語単位からパス単位で削除するように変更
  imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
  " ESCキーを2回押すと終了する
  nmap <silent><buffer> <F1> q
  imap <silent><buffer> <ESC><F1> <ESC>q
endfunction
"nnoremap <silent> ug :Unite grep:%:-iHRn<CR>
nnoremap <silent> ,ug :Unite grep:./:-iHRnr<CR>
nnoremap <silent> ,uo :Unite outline:./:-iHRnr<CR>
