#!/bin/bash

CURRENT_DIR=`pwd`

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/git-completion.bash

ln -nfs $CURRENT_DIR/../vim/.vimrc ~/.vimrc
ln -nfs $CURRENT_DIR/../git/.gitconfig ~/.gitconfig
ln -nfs $CURRENT_DIR/.bashrc ~/.bashrc
ln -nfs $CURRENT_DIR/.bash_profile ~/.bash_profile
ln -nfs $CURRENT_DIR/.screenrc ~/.screenrc
ln -nfs $CURRENT_DIR/../pentadactyl/_pentadactylrc ~/.pentadactylrc
