#!/usr/bin/env zsh


printf "\n%s\n\n" "===== $(date +%Y-%m-%d-%H%M%S) ====" >> ${HOME}/brewInstallation.log

brew bundle --verbose | tee >> ${HOME}/brewInstallation.log
