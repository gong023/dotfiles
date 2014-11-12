set nocompatible
filetype off
sy on

if has('vim_starting')
  set runtimepath+=~/.vim/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle'))
endif

set runtimepath+=~/.vim/
runtime! userautoload/*.vim

filetype plugin on
filetype indent on
au BufNewFile,BufRead *.rs set filetype=rust
autocmd FileType go autocmd BufWritePre <buffer> Fmt
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
set completeopt=menu,preview

set t_Co=256
colorscheme jellybeans

nnoremap fv :VimFilerBufferDir<CR>
