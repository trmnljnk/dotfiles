#!/usr/bin/env zsh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while "true"; do sudo -n "true"; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# 'Brave Browser.app'
# Firefox.app
# KeePassX.app
# KeePassXC.app
# 'Visual Studio Code.app'

dockutil --add ~/Applications/KeePassXC.app --replacing 'App Store' --no-restart
dockutil --add ~/Applications/'Visual Studio Code.app' --replacing 'Podcasts' --no-restart
dockutil --add ~/Applications/'Firefox.app' --replacing 'Music' --no-restart
dockutil --add ~/Applications/'Brave Browser.app' --replacing 'TV' --no-restart
dockutil --add /Applications/TextEdit.app --replacing 'Reminders' --no-restart

# https://macos-defaults.com/

# defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"; killall Finder
# defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true" && killall Finder

###############################################################################
# Finder                                                                      #
###############################################################################

# Set Desktop as the default location for new Finder windows
# For other paths, use `PfLo` and `file:///full/path/here/`
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Desktop/"


# Finder: show all filename extensions
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"

# Finder: show status bar
defaults write com.apple.finder "ShowStatusBar" -bool "true"

# Finder: show path bar
defaults write com.apple.finder "ShowPathbar" -bool "true"

# When performing a search, search the current folder by default
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"

# Disable the warning when changing a file extension
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false"

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices "DSDontWriteNetworkStores" -bool "true"
defaults write com.apple.desktopservices "DSDontWriteUSBStores" -bool "true"

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `glyv`
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv"
# sudo find / -name ".DS_Store"  -exec rm {} \;

###############################################################################
# Dock                                                                        #
###############################################################################

defaults write com.apple.dock autohide-delay -float 0 
defaults write com.apple.dock autohide-time-modifier -float 0.4


# Don’t show recent applications in Dock
defaults write com.apple.dock show-recents -bool "false"

# Remove the auto-hiding Dock delay
defaults write com.apple.dock "autohide-delay" -float "0"
# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock "autohide-time-modifier" -float "0"

# Automatically hide and show the Dock
defaults write com.apple.dock "autohide" -bool "true"

# Set the Dock position to the left
defaults write com.apple.dock "orientation" -string "left"

# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock "tilesize" -int "30"

###############################################################################
#  TextEdit                                                                   #
###############################################################################


# Set plain text mode for new TextEdit documents
defaults write com.apple.TextEdit "RichText" -bool "false"
# Open and save files as UTF-8 in TextEdit
defaults write com.apple.TextEdit "PlainTextEncoding" -int "4"
defaults write com.apple.TextEdit "PlainTextEncodingForWrite" -int "4"




###############################################################################
# Kill affected applications                                                  #
###############################################################################

for app in "Activity Monitor" \
	"Dock" \
	"Finder" \
	"Mail" \
	"Messages" \
	"SystemUIServer" \
	"Terminal" \
	killall "${app}" &> /dev/null
done
echo "Done. Note that some of these changes require a logout/restart to take effect."
