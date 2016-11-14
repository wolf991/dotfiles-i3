#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Autostart x
#if [ -z "$DISPLAY" ] && [ -n "XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
#	exec startx
#fi

# Set vim as default editor
VISUAL=/usr/bin/vim
alias vi='/usr/bin/vim'

# autocomplete when using sudo
complete -cf sudo

# powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh

# paths for android developement
export ANDROID_HOME=~/Android/Sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
