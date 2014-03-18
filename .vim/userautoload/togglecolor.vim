function! ToggleDarkAndLightScheme()
    if g:colors_name == 'jellybeans'
        echo 'set newspaper'
"        hi IndentGuidesOdd  ctermbg=white
"        hi IndentGuidesEven  ctermbg=lightgrey
        set background=light
        colorscheme newspaper
    else
        echo 'set jellybeans'
"        hi IndentGuidesOdd  ctermbg=black
"        hi IndentGuidesEven  ctermbg=darkgrey
        set background=dark
        colorscheme jellybeans
    endif
endfunction
command! ToggleC call ToggleDarkAndLightScheme()
