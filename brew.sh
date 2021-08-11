

https://brew.sh/

# NOTE: In order to make your Casks install to sensible and predictable locations,
# I recommend adding the following line to your ~/.zshrc or ~/.bash_profile.

# export HOMEBREW_CASK_OPTS="--appdir=/Applications"
# export HOMEBREW_CASK_OPTS="--appdir=~/Applications"
# export HOMEBREW_CASK_OPTS="--appdir=~/Applications --fontdir=/Library/Fonts"

# export HOMEBREW_NO_ANALYTICS=1



# macOS Requirements 
xcode-select --install

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install Open-Source Utilities With Homebrew

# commands
brew search      # search a package
brew info        # info about package
brew install     # install a packages
brew upgrade     # upgrade package
brew uninstall   # remove package
brew leaves      # list installed packages
brew list        # list all packages installed by brew
man brew         # show manpage brew
brew doctor      # check if homebrew is installed and working properly


# Install Graphical Apps With Homebrew Cask

# brew cask commands
brew search --cask      # search application  
brew install --cask     # install application
brew uninstall --cask   # uninstall application
brew list --cask      # list installed applications
brew upgrade --cask     # upgrades all outdated casks or the specified casks
brew info --cask        # info about cask

# global commands
brew update      # update brew and cask
brew outdated    # what's due for upgrades
brew doctor      # diagnose brew issues





# casks
brew install --cask  caffeine
brew install --cask  firefox
brew install --cask  mactex-no-gui
brew install --cask  postman


# mas-cli
# A simple command line interface for the Mac App Store. Designed for scripting and automation.

brew install mas

mas list        
mas search
mas install
mas outdated
mas upgrade

# Brew Bundle Brewfile

#
#
#
#
#
# The first time the command, brew bundle, is run it will install, if not already.

brew bundle

brew bundle install

# Looks for ~/Brewfile and installs its contents
#  or more
# brew bundle install --file=brew-dump

# Creating a Brewfile
# You can dump a Brewfile of your current brew/cask/mas entries into your current directory with

brew bundle dump

brew bundle list
brew bundle check 
brew bundle
