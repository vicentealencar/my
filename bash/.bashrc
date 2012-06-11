# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export IVO=/home/vicente/enlistments/ivocatus
export WIL=/home/vicente/enlistments/wilsons

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

PATH=$PATH:/home/vicente/enlistments/me
export PATH

source ./git-completion.bash
