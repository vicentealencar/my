# .bashrc

set -o vi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

DEV='~/dev/'
MY_REPO=$DEV'my/'
JUS=$DEV'jus'

alias my='cd '${MY_REPO}
alias dev='cd '${DEV}
alias jus='cd '${JUS}
alias cls=clear
alias cd='pushd'
alias p='popd'
alias notf='terminal-notifier -message "command finished"'

PATH=$PATH:${MY_REPO}/scripts
export PATH

source ~/git-completion.bash

export HISTSIZE=100000

PATH=$PATH:$HOME/.rvm/bin:$HOME/dev/my/scripts # Add RVM to PATH for scripting
