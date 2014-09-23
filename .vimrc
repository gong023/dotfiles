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

set t_Co=256
colorscheme jellybeans

nnoremap fv :VimFilerBufferDir<CR>
