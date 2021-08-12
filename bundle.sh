#!/usr/bin/env zsh


printf "%s\n\n" "===== $(date +%Y-%m-%d-%H%M%S) ====" >> brewInstallation.log

brew bundle --verbose | tee >> ${HOME}/brewInstallation.log
