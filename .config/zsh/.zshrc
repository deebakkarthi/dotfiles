#!/bin/zsh
PROMPT='%F{green}%3~ %#%f '

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
#Hidden files
_comp_options+=(globdots)

#Check for alias file
. $ZDOTDIR/aliasrc && source $ZDOTDIR/aliasrc
