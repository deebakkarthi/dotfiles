#!/bin/zsh
export PLAN9="/usr/local/plan9"

export PATH="$PATH:$PLAN9/bin:$HOME/.local/bin"

export EDITOR="nvim"
export VISUAL="nvim"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export PASSWORD_STORE_DIR="$XDG_DATA_HOME/passwd"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export KODI_DATA="$XDG_DATA_HOME/kodi"

export COLLEGEDIR="$HOME/college/junior/semester_5"
export TIMEWARRIORDB="$XDG_CONFIG_HOME/timewarrior"

export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
