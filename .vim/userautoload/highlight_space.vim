function! SOLSpaceHilight()
    syntax match SOLSpace "^\s\+" display containedin=ALL
    highlight SOLSpace term=underline ctermbg=black
endf
function! JISX0208SpaceHilight()
    syntax match JISX0208Space "　" display containedin=ALL
    highlight JISX0208Space term=underline ctermbg=LightCyan
endf
if has("syntax")
    syntax on
        augroup invisible
        autocmd! invisible
        autocmd BufNew,BufRead * call SOLSpaceHilight()
        autocmd BufNew,BufRead * call JISX0208SpaceHilight()
    augroup END
endif
" 全角スペース・行末のスペース・タブの可視化
"if has("syntax")
"    syntax on
" 
"    " PODバグ対策
"    syn sync fromstart
" 
"    function! ActivateInvisibleIndicator()
"        syntax match InvisibleJISX0208Space "　" display containedin=ALL
"        highlight InvisibleJISX0208Space term=underline ctermbg=Blue guibg=darkgray gui=underline
"        "syntax match InvisibleTrailedSpace "[ \t]\+$" display containedin=ALL
"        "highlight InvisibleTrailedSpace term=underline ctermbg=Red guibg=NONE gui=undercurl guisp=darkorange
"        "syntax match InvisibleTab "\t" display containedin=ALL
"        "highlight InvisibleTab term=underline ctermbg=white gui=undercurl guisp=darkslategray
"    endf
"    augroup invisible
"        autocmd! invisible
"        autocmd BufNew,BufRead * call ActivateInvisibleIndicator()
"    augroup END
"endif
