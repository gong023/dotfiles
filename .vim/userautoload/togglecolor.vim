function! ToggleDarkAndLightScheme()
    if g:colors_name == 'jellybeans'
        colorscheme newspaper
        set background=light
        hi IndentGuidesOdd  ctermbg=white
        hi IndentGuidesEven  ctermbg=lightgrey
        g:colors_name = 'newspaper'
    else
        colorscheme jellybeans
        set background=dark
        hi IndentGuidesOdd  ctermbg=black
        hi IndentGuidesEven  ctermbg=darkgrey
        g:colors_name = 'jellybeans'
    endif
endfunction
command! ToggleC call ToggleDarkAndLightScheme()
