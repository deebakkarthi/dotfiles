#!/bin/sh
if [ -f "$HOME/.config/ksh/kshrc" ]; then
    ENV="$HOME/.config/ksh/kshrc"
    export ENV
fi

export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export COLLEGEDIR="$HOME/college/senior/semester_7"

export GOPATH="$XDG_DATA_HOME"/go
export GOMODCACHE="$XDG_CACHE_HOME"/go/mod

export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup

export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo

export NLTK_DATA="$XDG_DATA_HOME/nltk_data/"

eval $(/opt/homebrew/bin/brew shellenv)
