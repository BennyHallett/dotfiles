# Lines configured by zsh-newuser-install
HISTFILE=~/.zhs_histfile
HISTSIZE=10000
SAVEHIST=10000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/benny/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export EDITOR="vim"

## PATH ADDITIONS
export PATH=/home/benny/.gem/ruby/2.2.0/bin:$PATH

## ALIASES
alias vi="vim"
alias grep="grep --color=auto"
alias ls="ls --color=auto"
alias restart="sudo systemctl reboot"
alias halt="sudo systemctl halt"
alias turnoff="sudo systemctl poweroff"
alias wifi="sudo wifi-menu"
alias wifi_off="sudo netctl stop-all"
