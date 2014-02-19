function! ToggleDarkAndLightScheme()
    if g:colors_name == 'jellybeans'
        echo 'set newspaper'
        set background=light
        hi IndentGuidesOdd  ctermbg=white
        hi IndentGuidesEven  ctermbg=lightgrey
        colorscheme newspaper
    else
        echo 'set jellybeans'
        set background=dark
        hi IndentGuidesOdd  ctermbg=black
        hi IndentGuidesEven  ctermbg=darkgrey
        colorscheme jellybeans
    endif
endfunction
command! ToggleC call ToggleDarkAndLightScheme()
