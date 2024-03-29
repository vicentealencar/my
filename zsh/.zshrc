set -o vi

zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
bindkey -v
bindkey '^R' history-incremental-search-backward

autoload -Uz compinit -u && compinit -u

DEV='~/dev/'
MY_REPO=$DEV'my/'

alias my='cd '${MY_REPO}
alias dev='cd '${DEV}
alias jus='cd '${JUS}
alias cls=clear
alias notf='terminal-notifier -message "command finished"'

PATH=$PATH:${MY_REPO}/scripts:~/bin
export PATH

export HISTSIZE=100000

# Gets UTF-8 characters to work over SSH on OS X
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_PAPER="en_US.UTF-8"
export LC_NAME="en_US.UTF-8"
export LC_ADDRESS="en_US.UTF-8"
export LC_TELEPHONE="en_US.UTF-8"
export LC_MEASUREMENT="en_US.UTF-8"
export LC_IDENTIFICATION="en_US.UTF-8"
export LC_ALL=
export PATH="/usr/local/opt/ruby/bin:$PATH"
