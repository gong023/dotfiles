set -x SHELL /bin/bash
set -x PATH /usr/local/bin $PATH
set -g theme_title_display_path yes
set -g theme_title_use_abbreviated_path no
set -g theme_display_docker_machine yes
set -U fish_prompt_pwd_dir_length 0
alias g='git'
alias p='peco_cd_ghq_list'
alias ggco='peco_git_checkout'
alias hhh='peco_history'
alias gst='git status'
