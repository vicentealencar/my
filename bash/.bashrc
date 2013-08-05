# .bashrc

set -o vi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

MY_REPO='~/dev/my/'

alias my='cd '${MY_REPO}
alias cls=clear
alias gvim='/Users/vicentealencar/dev/tools/vim/gvim.sh'

PATH=$PATH:${MY_REPO}/scripts
export PATH

source ~/git-completion.bash

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
