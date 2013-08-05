# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
export PATH="$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

ZSH_THEME="gallois"
#ZSH_THEME="random"

plugins=(git ruby gem mysql)

source $ZSH/oh-my-zsh.sh

setopt auto_pushd
setopt pushd_ignore_dups
function chpwd() { ls -v -F -G }
setopt auto_pushd
setopt pushd_ignore_dups
function chpwd() { ls -v -F --color=auto }
autoload -U compinit
compinit -u
setopt autopushd
setopt pushd_ignore_dups
setopt auto_cd
setopt list_packed
setopt list_types

function alc() {
if [ $# != 0 ]; then
    w3m "http://eow.alc.co.jp/$*/UTF-8/?ref=sa"
else
    w3m "http://www.alc.co.jp/"
fi
}

function google() {
  local str opt
  if [ $# != 0 ]; then
    for i in $*; do
      str="$str+$i"
    done
    str=`echo $str | sed 's/^\+//'`
    opt='search?num=50&hl=ja&lr=lang_ja'
    opt="${opt}&q=${str}"
  fi
  w3m http://www.google.co.jp/$opt
}

alias vi="vim"
alias ls='ls -v -F -G'
alias ll='ls -l'
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
alias locate="locate -i"
alias lv="lv -c -T8192"
alias vimrc="vi $HOME/.vimrc"
alias zshrc="vi $HOME/.zshrc"
alias zzz="source $HOME/.zshrc"
#alias tmux="tmux -2 -U"
