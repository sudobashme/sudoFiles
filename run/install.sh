#!/usr/bin/env bash
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
# - - ] sudoFiles/run/install.sh
# - - ] updated: 2018.07.23
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

if [ ! -d "~/GitHub/sudoFiles" ]; then
    git clone https://github.com/sudobashme/sudoFiles.git ~/GitHub/sudoFiles
fi
if [ -f ~/.profile ]; then
    rm -rf  ~/.profile && ln -s ~/GitHub/sudoFiles/.profile ~
else
    ln -s ~/.profile ~
fi
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
if [ -f ~/.prompt ]; then
    rm -rf  ~/.prompt && ln -s ~/GitHub/sudoFiles/.prompt ~
else
    ln -s ~/.prompt ~
fi
if [ -f "$HOME/.prompt" ]; then
    source "$HOME/.prompt"
fi
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
if [ -f ~/.path ]; then
    rm -rf  ~/.path && ln -s ~/GitHub/sudoFiles/.path ~
else
    ln -s ~/GitHub/sudoFiles/.path ~
fi
if [ -f "$HOME/.path" ]; then
    source "$HOME/.path"
fi
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
if [ -f ~/.exports ]; then
    rm -rf  ~/.exports && ln -s ~/GitHub/sudoFiles/.exports ~
else
    ln -s ~/.exports ~
fi
if [ -f "$HOME/.exports" ]; then
    source "$HOME/.exports"
fi
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
if [ -f ~/.aliases ]; then
    rm -rf  ~/.aliases && ln -s ~/GitHub/sudoFiles/.aliases ~
else
    ln -s ~/.aliases ~
fi
if [ -f "$HOME/.aliases" ]; then
    source "$HOME/.aliases"
fi
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
if [ -f ~/.help ]; then
    rm -rf  ~/.help && ln -s ~/GitHub/sudoFiles/.help ~
else
    ln -s ~/.help ~
fi
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update >> ~/.brew_install_log.txt 2>&1
brew upgrade >> ~/.brew_install_log.txt 2>&1
# Start installing
source ~/GitHub/sudoFiles/run/brew.sh
