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
alias cd..='cd ..'
alias :q='exit'
alias unmount='umount'
function reset(){
	printf "\x1b[H\x1b[2J\x1b[3J\x1bc\x1b]104\x1b[!p\x1b[?3;4l\x1b[4l\x1b>\x1b[?69l"
}
