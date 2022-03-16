#!/bin/bash
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'
alias s='true'
alias l='ls -Ah'
alias la='ls -A'
alias ll='ls -lh'
alias sl='ls'
alias lla='ls -lAh'
alias lal='ls -lAh'
alias vi='vim'
alias cd..='cd ..'
alias sym='ln -s'
alias :q='exit'
alias dmesg='sudo dmesg'
alias poweroff='sudo poweroff'
alias reboot='sudo reboot'
function pacman(){
	unset NEEDS_ROOT
	for arg in $*; do
		if [[ "$arg" == -* ]]; then
			if [[ "$arg" == *D* || "$arg" == *R* || "$arg" == *S* || "$arg" == *U* ]]; then
				NEEDS_ROOT=true
			fi
		fi
	done
	if [[ $NEEDS_ROOT == true ]]; then
		unset NEEDS_ROOT
		sudo pacman $*
	else
		unset NEEDS_ROOT
		env pacman $*
	fi
}
alias systemctl='sudo systemctl'
alias mount='sudo mount'
alias umount='sudo umount'
alias fdisk='sudo fdisk'
alias cfdisk='sudo cfdisk'
alias unmount='umount'
function reset(){
	printf "\x1b[H\x1b[2J\x1b[3J\x1bc\x1b]104\x1b[!p\x1b[?3;4l\x1b[4l\x1b>\x1b[?69l"
}
function plogout(){
	pkill -u "${1:-$(id -u)}"
}
