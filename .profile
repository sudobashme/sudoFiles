#!/usr/bin/env bash
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
# - - ] sudoFiles/.profile
# - - ] updated: 2018.07.20
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

if [ -f "$HOME/.prompt" ]; then
    source "$HOME/.prompt"
fi
if [ -f "$HOME/.path" ]; then
    source "$HOME/.path"
fi
if [ -f "$HOME/.exports" ]; then
    source "$HOME/.exports"
fi
if [ -f "$HOME/.aliases" ]; then
    source "$HOME/.aliases"
fi
if [ -f "$HOME/.private" ]; then
    source "$HOME/.private"
fi
if [ -e "${HOME}/.iterm2_shell_integration.bash" ]; then
    source "${HOME}/.iterm2_shell_integration.bash"
fi
if [ -s "$HOME/.rvm/scripts/rvm" ]; then
    source "$HOME/.rvm/scripts/rvm"
fi
if [ -s "$NVM_DIR/nvm.sh" ]; then
    source "$NVM_DIR/nvm.sh"
fi
if [ -f  "/usr/local/bin/virtualenvwrapper.sh" ]; then
    source "/usr/local/bin/virtualenvwrapper.sh"
fi
