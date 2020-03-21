#!/bin/zsh

CURRENT_DIR=`pwd`

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh > ~/git-completion.zsh

ln -nfs $CURRENT_DIR/../vim/.vimrc ~/.vimrc
ln -nfs $CURRENT_DIR/../git/.gitconfig ~/.gitconfig
ln -nfs $CURRENT_DIR/.zshrc ~/.zshrc
ln -nfs $CURRENT_DIR/.screenrc ~/.screenrc
ln -nfs $CURRENT_DIR/../pentadactyl/_pentadactylrc ~/.pentadactylrc
