# .bashrc

set -o vi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export IVO=$HOME/enlistments/ivocatus
export WIL=$HOME/enlistments/wilsons

alias emb='cd $ROOT/app/assets/javascripts/ember'
alias mig='cd $ROOT/db/migrate'
alias mod='cd $ROOT/app/models'
alias con='cd $ROOT/app/controllers'
alias view='cd $ROOT/app/views'
alias ivo='export ROOT=$IVO && cd $ROOT'
alias wil='export ROOT=$WIL && cd $ROOT'
alias root='cd $ROOT'
alias cls='clear'
alias hom='cd $HOME'
alias my='cd /home/enlistments/my'

PATH=$PATH:$HOME/enlistments/my/scripts
export PATH

source ~/git-completion.bash

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
