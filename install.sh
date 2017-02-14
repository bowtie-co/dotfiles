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
brew install ruby-install           # Installation tool to manage rubies/gems
brew install chruby                 # Tool to change ruby versions
brew install zsh                    # Better shell scripting
brew install vim                    # Fast, ubiquitous text editor 
brew install git                    # Source control w/ Git
brew install hub                    # Github cli utility
brew install ack                    # Fast file search
brew install platformio             # IoT builds in the terminal with platformio
brew install node                   # NPM/Node for runtime js
brew install watchman               # Used for watching files in React
brew install yarn                   # NPM alternative
brew install imagemagick            # Image media cli, used a lot in rails
brew install ansible                # Provisioning playbooks
brew install wget                   # cURL alternative, GET/Download cli tool
brew install redis                  # Cache db
brew install ffmpeg                 # Video transcoding tool
brew install mas                    # Mac Apple Store utility. Can install/update programs

mas install 497799835               # Install XCode
mas install 405399194               # Install Kindle
mas install 476533227               # Install Prepo for iOS icon creation
mas install 425424353               # Install The Unarchiver for corrupted zips

sudo xcodebuild -license accept     # Accept Xcode license via CLI

# Install ruby-2.3.0
echo "" && echo "" && echo "" && echo ""
echo "Installing ruby-2.3.0..... This will take a sec."
echo "" && echo "" && echo "" && echo ""

# Manage ruby version here
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


#========================================================================================#
# Copy Over Config
#========================================================================================#
echo "Copying .zshrc..."
cp zshrc ../.zshrc
echo "Copying .vimrc..."
cp vimrc ../.vimrc
echo "Copying .vim/..."
cp -rf vim ../.vim
echo "Copying .gitconfig.."
cp gitconfig ../.gitconfig

#========================================================================================#
# Install Ruby Modules
#========================================================================================#
gem install bundler
gem install rails
gem install jekyll
gem install mail catcher
gem install dotenv

#========================================================================================#
# Install JS Modules
#========================================================================================#
npm install gulp -g
npm install fixme -g
npm install redux-cli -g
npm install react-native-cli -g
npm install browserify -g
npm install watchify -g
npm install webpack -g



#========================================================================================#
# TO DO LIST
#========================================================================================#
# DOWNLOAD DMGs

# - unzip and copy over compressed app files
# - hdiutil move over the DMGs




# BOWTIE MODULES
# - download app + provisioning
# - download all starters
# - download current projects








