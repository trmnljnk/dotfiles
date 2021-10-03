#!/bin/zsh


printf "\n%s\n\n" "===== $(date +%Y-%m-%d-%H%M%S) ====" >> ${HOME}/bin/brewInstallation.log

brew bundle --verbose --file=~/bin/Brewfile  | tee >> ${HOME}/bin/brewInstallation.log
