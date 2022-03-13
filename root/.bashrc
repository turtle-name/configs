#!/usr/bin/bash
[[ $- != *i* ]] && return
HISTCONTROL=ignoreboth
[[ $DISPLAY ]] && shopt -s checkwinsize
umask 022
shopt -s histappend
shopt -s globstar
HISTFILE=/dev/null
HISTSIZE=10000
HISTFILESIZE=0
GLOBIGNORE=.:..
export EDITOR=/usr/bin/vim
PROMPT_COMMAND=
PS0=
PS1='\[\e]2;\u \w\a\]\[\e[0;2;37m\]`RETVAL=$?;[[ $RETVAL -ne 0 && $RETVAL -ne 130 ]] && printf %s "$RETVAL ";unset RETVAL`\[\e[0;38;5;9m\e]11;#1f0a1f\a\]\u\[\e[0;38;5;14m\] \w\[\e[0;37m\] > \[\e[0m\]'
PS2="\[\e[0;37m\]> \[\e[0m\]"
. ~/.bash_aliases&>/dev/null
[[ -f /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion
/bin/true
