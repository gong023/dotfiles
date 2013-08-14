imap nn <Esc>

nmap ,ee :e ++enc=euc-jp<CR>
nmap ,uu :e ++enc=utf-8<CR>
nmap aw 8w
nmap ae 8e
nmap ab 8b
nmap ah 5h
nmap al 5l
nmap aj 5j
nmap ak 5k
"gmを上書き
nmap <expr> gm (virtcol('$')/2).'\|'
nmap <C-e> <End>
nmap <C-a> <Home>
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nmap <F1> :only<CR>:q<CR>
nmap asdf :se paste<CR>
nmap fdsa :se nopaste<CR>
nmap qqwer :se nu<CR>
nmap rrewq :se nonu<CR>
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
