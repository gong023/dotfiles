set nocompatible
filetype off
sy on

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle'))
endif

set runtimepath+=~/.vim/
runtime! userautoload/*.vim

filetype plugin on
filetype indent on

set t_Co=256
colorscheme jellybeans

nnoremap fv :VimFilerBufferDir<CR>
