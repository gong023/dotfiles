imap nn <Esc>

nmap ,ee :e ++enc=euc-jp<CR>
nmap ,uu :e ++enc=utf-8<CR>
nmap aw 10w
nmap ae 10e
nmap ab 10b
nmap ah 4h
nmap al 4l
nmap aj 3j
nmap ak 3k
"gmを上書き
nmap <expr> gm (virtcol('$')/2).'\|'
nmap <C-e> <End>
nmap <C-a> <Home>
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nmap <F1> :only<CR>:q<CR>
nmap asdf :se paste<CR>
nmap fdsa :se nopaste<CR>
nmap aasdf :se nu<CR>
nmap ffdsa :se nonu<CR>
nmap qwer :se nowrap<CR>
nmap rewq :se wrap<CR>
vnoremap <C-e> <End>
vnoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-a> <Home>
inoremap , ,<Space>

nmap ; :
" カレントディレクトリの移動
command! -nargs=? -complete=dir -bang CD  call s:ChangeCurrentDir('<args>',  '<bang>')
function! s:ChangeCurrentDir(directory,  bang)
    if a:directory == ''
        lcd %:p:h
    else
        execute 'lcd' . a:directory
    endif

    if a:bang == ''
        pwd
    endif
endfunction
nnoremap <silent> <Space>cd :<C-u>CD<CR>
"autocmd FileType php set makeprg=php\ -l\ %
"autocmd BufWritePost *.php silent make | if len(getqflist()) != 1 | copen | else | cclose | endif
