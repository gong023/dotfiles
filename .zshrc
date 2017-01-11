# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
plugins=(git ruby gem mysql)

setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_ignore_dups
autoload -U compinit
compinit -u
setopt pushd_ignore_dups
setopt auto_cd
setopt list_packed
setopt list_types

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

function td() {
    todo done $(todo list | peco |awk -F " " '{print $3}' | sed s/:$//g)
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
alias s="ssh"
alias m="mosh"

[ -f ~/.zsh.`hostname -s` ] && source ~/.zsh.`hostname -s`
#[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh
#ZSH_THEME="arrow"
#source $ZSH/oh-my-zsh.sh

