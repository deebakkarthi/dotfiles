#!/bin/zsh
PROMPT='[%n@%m]%3~ %# '

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
#Hidden files
_comp_options+=(globdots)

#Check for alias file
. $ZDOTDIR/aliasrc && source $ZDOTDIR/aliasrc
