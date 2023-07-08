#!/bin/zsh
case $OSTYPE in
        darwin*)
	eval $(/opt/homebrew/bin/brew shellenv)
	;;
*)
        echo "ohter"
esac

PATH="$PATH:$HOME/.local/usr/bin:$HOME/.local/bin"

export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="st"
export BROWSER="firefox"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export COLLEGEDIR="$HOME/college/junior/semester_6"

export GOPATH="$XDG_DATA_HOME"/go
export GOMODCACHE="$XDG_CACHE_HOME"/go/mod
