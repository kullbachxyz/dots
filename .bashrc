#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -)"

export HISTSIZE=10000
export HISTFILESIZE=10000

alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

PS1='[\u@\h \W]\$ '


source ~/.config/shell/aliasrc

