#!/bin/zsh

autoload -U compinit && compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
#Hidden files
_comp_options+=(globdots)

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT='${vcs_info_msg_0_}'
zstyle ':vcs_info:git:*' formats '%b'


autoload -Uz colors && colors

PROMPT='[%n@%m]%3~ %# '
#Check for alias file
. $ZDOTDIR/aliasrc && source $ZDOTDIR/aliasrc
