#/bin/sh
# メモの意味合いが大きいので動かないと思う

brew install fontforge

# generate Ricty
## Downloads font
wget http://levien.com/type/myfonts/Inconsolata.otf %HOME/Downloads/
wget http://sourceforge.jp/frs/redir.php?m=iij&f=%2Fmix-mplus-ipa%2F59022%2Fmigu-1m-20130617.zip %HOME/Downloads/
wget https://github.com/yascentur/Ricty/archive/master.zip $HOME/Downloads/

$HOME/Downloads/Ricty-master/ricty_generator.sh auto

# copy Rocty to Library/Fonts
cp $HOME/Downloads/Ricty-Regular.ttf $HOME/Library/Fonts/
cp $HOME/Downloads/Ricty-Bold.ttf $HOME/Library/Fonts/
cp $HOME/Downloads/RictyDiscord-Regular.ttf $HOME/Library/Fonts/
cp $HOME/Downloads/RictyDiscord-Bold.ttf $HOME/Library/Fonts/

# patch to Ricty
mkdir ~/.font
cp $HOME/Library/Fonts/Ricty-Regular.ttf $HOME/.font/
fontforge -script $HOME/.vim/bundle/powerline/font/fontpatcher.py $HOME/.font/Ricty-Regular.ttf
cp $HOME/.font/Ricty-Regular.ttf $HOME/Library/Fonts/
