#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

export PATH=$PATH:$HOME/.local/share/gem/ruby/3.0.0/bin:$HOME/go/bin

PS1='[\u@\h \W]\$ '
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
exec fish
