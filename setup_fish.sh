brew install fish
ln -s $HOME/dotfiles/config.fish $HOME/.config/fish/config.fish
cd $HOME
curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish
omf install bobthefish
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
fisher z
fisher naoty/fish-my_peco_functions
