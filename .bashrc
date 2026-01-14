#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# bash history
export HISTSIZE=10000
export HISTFILESIZE=10000

PS1='[\u@\h \W]\$ '
# PS1='\[\e[91;1m\][\[\e[93m\]\h\[\e[92m\]@\[\e[94m\]\u\[\e[0m\] \[\e[95;1m\]\w\[\e[91m\]]\[\e[0m\]\\$ '

# source aliases
source ~/.config/shell/aliasrc

# Rust
. "$HOME/.cargo/env"
