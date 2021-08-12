#!/usr/bin/env zsh

echo "===== $(date +%Y-%m-%d-%H%M%S) ====" >> brewInstallation.log
echo "   " >> brewInstallation.log
brew bundle --verbose | tee >> brewInstallation.log
