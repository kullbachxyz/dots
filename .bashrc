#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -)"

export HISTSIZE=10000
export HISTFILESIZE=10000

alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias otp='pass otp'

alias cdwm='nvim ~/.local/src/dwm/config.h'
alias mdwm='cd ~/.local/src/dwm/ && sudo make clean install && cd -'

PS1='[\u@\h \W]\$ '

source ~/.config/shell/pass
