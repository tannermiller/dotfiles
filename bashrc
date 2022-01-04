alias ls='ls --color=auto'
alias ll='ls -al'

export VISUAL=nvim
export EDITOR="$VISUAL"

set -o vi

source $HOME/.cargo/env

source ~/.git-completions.bash
