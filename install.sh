#!/bin/bash
#===================================================#
#= 1. Preflight setup 
#= 2. Start the install process
      #- brew
      #- ruby/js/python
      #- VM & ansible
#= 3. Install dev dependencies
#===================================================#

# Install HomeBrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Xcode Command Line Tools
xcode-select --install

# Install Brew Packages
brew install chruby
brew install ruby-install
brew install zsh
brew install vim
brew install git
brew install hub
brew install ack
brew install platformio
brew install node
brew install watchman
brew install yarn
brew install imagemagick
brew install ansible
brew install wget
brew install redis
echo "\n \n \n \n \n"
echo "Installing ruby-2.3.0..... This will take a sec."
echo "Go play some pong =====> http://www.ponggame.org/pong.swf"
echo "\n \n \n \n \n"
ruby-install ruby-2.3.0

# Install Antigen
curl https://cdn.rawgit.com/zsh-users/antigen/v1.2.1/bin/antigen.zsh > antigen.zsh

# Install Powerline Fonts
git clone https://github.com/powerline/fonts
cd fonts && ./install.sh
cd .. && rm -rf fonts

echo "*************************************************************"
echo "***** YOU NEED TO CHANGE YOUR FONTS TO ENABLE ZSH THEME *****"
echo "*************************************************************"
echo "***** 1. Go to iTerm > Preferences > Profiles > Text    *****"
echo "***** 2. Choose  Hack font, set to desired size         *****"
echo "*************************************************************"









