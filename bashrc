#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l'
PS1='[\u@\h \W]\$ '

# get this file from https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source ~/.git-completion.sh

export PATH=$PATH:~/.cabal/bin
