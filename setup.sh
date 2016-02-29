#!/bin/sh
git submodule update --init --recursive

cd $(dirname $0)
for dotfile in .?*
do
    if [ $dotfile != '..' ] && [ $dotfile != '.git' ]
    then
        #ln -Fis "$PWD/$dotfile" $HOME
        ln -is "$PWD/$dotfile" $HOME
    fi
done

cd $HOME/.vim/neobundle.vim
git checkout dcbeb13d9c46bee7a22a5a3dfea0fd99c504f876
