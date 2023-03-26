#!/bin/zsh
export PATH="$HOME/.cargo/bin:$HOME/.ghcup/bin:$HOME/.cabal/bin:$HOME/.local/bin:$PATH"

export EDITOR="nvim"
export VISUAL="nvim"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

#Personal env
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/passwd"
export COLLEGEDIR="$HOME/college/junior/semester_6"

#Cleanup
export TIMEWARRIORDB="$XDG_CONFIG_HOME/timewarrior"
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export KODI_DATA="$XDG_DATA_HOME/kodi"
