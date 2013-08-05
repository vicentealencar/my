# .bashrc

set -o vi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

MY_REPO='~/dev/my/'

alias my='cd '${MY_REPO}

PATH=$PATH:${MY_REPO}/scripts
export PATH

source ~/git-completion.bash

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
