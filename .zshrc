autoload colors
colors
autoload -U compinit
compinit
export LANG=ja_JP.UTF-8

function zle-line-init zle-keymap-select {
  case $KEYMAP in
    vicmd)
    PROMPT="%B%{[31m%}NOR%{[m%}%b:%1~ %# "
    ;;
    main|viins)
    PROMPT="%B%{[32m%}INS%{[m%}%b:%1~ %# "
    ;;
  esac
  zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

case ${UID} in
0)
    PROMPT="%B%{[31m%}%/#%{[m%}%b "
    PROMPT2="%B%{[31m%}%_#%{[m%}%b "
    SPROMPT="%B%{[31m%}%r is correct? [n,y,a,e]:%{[m%}%b "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
    ;;
*)
    RPROMPT="%{[33m%}%~%{[m%}"
    RPROMPT2="%{[33m%}%_%{[m%}"
    SPROMPT="%{[31m%}%r is correct? [n,y,a,e]:%{[m%} "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
    ;;
esac 

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data 

bindkey -v

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end 

setopt auto_cd
setopt auto_pushd
setopt correct

#
# 
# Imported from .bash_profile
#
#
#########################################
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad
alias ls='ls -l'
alias platex='platex --kanji=utf8'
PATH=$PATH:/Applications/pTeX.app/teTeX/bin/
PATH=$PATH:$SDKROOT/usr/include/libxml2/
# RVM
if [[ -s $HOME/.rvm/scripts/rvm ]] ; then source $HOME/.rvm/scripts/rvm ; fi
alias r=rails
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
