au BufNewFile,BufRead *.go set sw=4 noexpandtab ts=4 completeopt=menu,preview
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']

" autocmd FileType go setlocal omnifunc=gocomplete#Complete
" let g:neocomplcache_omni_patterns.go = '\h\w*%.'
