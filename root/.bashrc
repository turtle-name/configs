#!/usr/bin/bash
[[ $- != *i* ]] && return
HISTCONTROL=ignoreboth
[[ $DISPLAY ]] && shopt -s checkwinsize
umask 022
shopt -s histappend
shopt -s globstar
HISTFILE=~/.bash_history
HISTSIZE=100000
HISTFILESIZE=1000000
GLOBIGNORE=.:..
export LS_COLORS="fi=38;5;15:bd=38;5;13:cd=38;5;11:ln=38;5;14:pi=38;5;11:so=38;5;11:di=38;5;12:ex=38;5;10:or=38;5;1:*.jar=38;5;208:*.z64=38;5;48:*.n64=38;5;48:*.nds=38;5;48:*.cia=38;5;48:*.nes=38;5;48:*.gb=38;5;48:*.gbc=38;5;48:*.gba=38;5;48:*.sgm=38;5;48:*.sav=38;5;48:*.lua=38;5;126:*.py=38;5;184"
export EXA_COLORS="ur=38;5;11:uw=38;5;9:ux=38;5;10:ue=38;5;10:gr=38;5;11:gw=38;5;9:gx=38;5;10:tr=38;5;11:tw=38;5;9:tx=38;5;10:su=38;5;13:sf=38;5;13:xa=38;5;13:sn=38;5;14:sb=38;5;6:df=38;5;11:ds=38;5;11:uu=38;5;14:un=38;5;15:gu=38;5;10:gn=38;5;15:lc=38;5;9:lm=38;5;13:ga=38;5;10:gm=38;5;14:gd=38;5;9:gv=38;5;11:gt=38;5;13:xx=38;5;8:da=38;5;14:in=38;5;13:bl=38;5;13:hd=38;5;15:lp=38;5;14:cc=48;5;15;38;5;0"
export EDITOR=/usr/bin/vim
PROMPT_COMMAND=
PS0=
PS1='\[\e]2;\u \w\a\]\[\e[0;2;37m\]`RETVAL=$?;[[ $RETVAL -ne 0 && $RETVAL -ne 130 ]] && printf %s "$RETVAL ";unset RETVAL`\[\e[0;38;5;9m\e]11;#170a0f\a\]\u\[\e[0;38;5;14m\] `PWDHOME="$PWD";P="";[[ "$PWDHOME" == "$HOME"* ]] && PWDHOME="${PWDHOME/"$HOME"/"~"}";while [[ "${#PWDHOME}" -gt 48 ]];do P=".../";PWDHOME="${PWDHOME#*\/}";done;printf "%s" "$P$PWDHOME"`\[\e[0;37m\] > \[\e[0m\]'
PS2="\[\e[0;37m\]> \[\e[0m\]"
. ~/.bash_aliases&>/dev/null
[[ -f /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion
