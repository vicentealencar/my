#!/bin/zsh

CURRENT_DIR=`pwd`

mkdir -p ~/.zsh/functions
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh > ~/.zsh/_git
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/.zsh/git-completion.bash
rm ~/.zcompdump

ln -nfs $CURRENT_DIR/../vim/.vimrc ~/.vimrc
ln -nfs $CURRENT_DIR/../git/.gitconfig ~/.gitconfig
ln -nfs $CURRENT_DIR/.zshrc ~/.zshrc
