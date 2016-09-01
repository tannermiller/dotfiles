#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias grep="/usr/bin/grep --color=auto --exclude=*.pyc"
unset GREP_OPTIONS

function grepp() {
  find . -name \*.py | xargs grep -n "$@"
}

set -o vi

alias ll='ls -al'
