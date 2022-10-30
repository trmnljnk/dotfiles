
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



function encrypt {  # list preferred id last
  output="${PWD}/$(basename ${1}).$(date +%F).enc"
  gpg --encrypt --armor \
    --output ${output} \
    -r 0xDB2B9D8EB7E8B500 \
    "${1}" && echo "${1} -> ${output}" }

function decrypt {
  output=$(echo "${1}" | rev | cut -c16- | rev)
  gpg --decrypt --output ${output} "${1}" \
    && echo "${1} -> ${output}" }

function myip {
  curl -sq "https://icanhazip.com/" }

function rs {
  rsync --verbose --archive --human-readable \
    --progress --stats --ipv4 --compress \
    --log-file=$(mktemp) "${@}" }
