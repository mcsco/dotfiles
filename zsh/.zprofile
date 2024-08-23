# profile file. Runs on login. Environmental variables are set here.

# If you don't plan on reverting to bash, you can remove the link in ~/.profile
# to clean up.

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"
export PATH="$PATH:/opt/nvim/bin"
unsetopt PROMPT_SP

# Default programs:
export EDITOR="nvim"
export TERMINAL="konsole"
export TERMINAL_PROG="konsole"
export BROWSER="firefox"

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
#export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME/android"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export HISTFILE="$XDG_DATA_HOME/history"

# Other program settings:
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '␛[1;31m')"
export LESS_TERMCAP_md="$(printf '%b' '␛[1;36m')"
export LESS_TERMCAP_me="$(printf '%b' '␛[0m')"
export LESS_TERMCAP_so="$(printf '%b' '␛[01;44;33m')"
export LESS_TERMCAP_se="$(printf '%b' '␛[0m')"
export LESS_TERMCAP_us="$(printf '%b' '␛[1;32m')"
export LESS_TERMCAP_ue="$(printf '%b' '␛[0m')"
export LESSOPEN="| /usr/bin/highlight -O ansi %s 2>/dev/null"
