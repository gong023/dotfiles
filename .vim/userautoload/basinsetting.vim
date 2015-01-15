set encoding=utf-8
set fileencoding=utf-8

au BufNewFile,BufRead *.js  set nowrap tabstop=2 shiftwidth=2 softtabstop=2
au BufNewFile,BufRead *.css set nowrap tabstop=2 shiftwidth=2 softtabstop=2
au BufNewFile,BufRead *.tpl set nowrap tabstop=2 shiftwidth=2 softtabstop=2
au BufNewFile,BufRead *.inc set nowrap tabstop=2 shiftwidth=2 softtabstop=2
au BufNewFile,BufRead *.rb set nowrap tabstop=2 shiftwidth=2 softtabstop=2
au BufNewFile,BufRead *.html set nowrap tabstop=2 shiftwidth=2 softtabstop=2
au BufNewFile,BufRead Rakefile set nowrap tabstop=2 shiftwidth=2 softtabstop=2
au BufReadPost,BufNewFile *_spec.rb set syntax=rspec
set ts=4 sts=4 sw=4 noet
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set ruler
set hlsearch
set incsearch
set smartindent
set ignorecase
set nowrap
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<
set backspace=indent,eol,start
set timeout timeoutlen=500 ttimeoutlen=100
set display=lastline
set runtimepath+=$GOROOT/misc/vim
