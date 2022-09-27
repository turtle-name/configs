#!/bin/bash
if [[ "$TERM" != "linux" ]]; then
	alias exa='exa -hg --color=auto --icons'
	alias mekfetch='mekfetch -c -b -n'
else
	alias exa='exa -hg --color=auto'
	alias mekfetch='mekfetch -c -b -f'
fi
alias less='less --RAW-CONTROL-CHARS'
alias tree='exa --tree'
alias ls='exa'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'
alias l='exa -a'
alias la='exa -a'
alias ll='exa -la'
alias sl='exa'
alias vi='vim'
alias cd..='cd ..'
alias sym='ln -s'
alias :q='exit'
alias shutdown='poweroff'
alias restart='reboot'
alias ctl='sudo dinitctl'
alias odus='odus '
alias sudo='odus '
function reset(){
	printf "\x1b[H\x1b[2J\x1b[3J\x1bc\x1b]104\x1b[!p\x1b[?3;4l\x1b[4l\x1b>\x1b[?69l"
}
