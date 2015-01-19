# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
export PATH="$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.phpenv/bin:$PATH"
#eval "$(phpenv init -)"
eval "$(hub alias -s)"
export GOROOT=$HOME/.go
export PATH=$PATH:$GOROOT/bin

plugins=(git ruby gem mysql)

#ZSH_THEME="arrow"
#source $ZSH/oh-my-zsh.sh
#source $HOME/.nvm/nvm.sh

setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_ignore_dups
autoload -U compinit
compinit -u
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

man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
        man "$@"
}

alias vi="vim"
alias ls='ls -v -F -G'
alias ll='ls -la'
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
alias locate="locate -i"
alias lv="lv -c -T8192"
alias vimrc="vi $HOME/.vimrc"
alias zshrc="vi $HOME/.zshrc"
alias zzz="source $HOME/.zshrc"
alias tmux="tmux -2"
alias rmswp="find . -name '*.swp' -ok rm {} \; -print"
alias p='cd $(ghq list -p | peco)'
alias hhh='eval $(history | peco | sed -e "s/^ *[0-9]*//")'
alias gco='git checkout $(git branch | peco)'
export MANPAGER='less -R'

[ -f ~/.zsh.`hostname -s` ] && source ~/.zsh.`hostname -s`
#[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh
