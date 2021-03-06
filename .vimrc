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
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
set completeopt=menu,preview

set t_Co=256
syntax enable
set background=dark
colorscheme solarized

nnoremap fv :VimFilerBufferDir<CR>
