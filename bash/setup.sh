#!/bin/bash

CURRENT_DIR=`pwd`

ln -nfs $CURRENT_DIR/../vim/.vimrc ~/.vimrc
ln -nfs $CURRENT_DIR/../git/.gitconfig ~/.gitconfig
ln -nfs $CURRENT_DIR/.bashrc ~/.bashrc
ln -nfs $CURRENT_DIR/.bash_profile ~/.bash_profile
ln -nfs $CURRENT_DIR/.screenrc ~/.screenrc
