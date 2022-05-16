
PROMPT="%F{10} %* %f ~"$'\n'"$ "

export PATH="$HOME/bin:$PATH"
export HOMEBREW_CASK_OPTS="--appdir=~/Applications --fontdir=/Library/Fonts"
export HOMEBREW_NO_ANALYTICS=1

# zsh auto-completion
if type brew &>/dev/null; then
FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

autoload -Uz compinit
compinit
fi


alias cleanvim="/usr/bin/vim -N -u NONE"
alias cleartex="find . -type f ! -name '*.tex' -a ! -name'*.bib'"
# color on
export CLICOLOR=1
