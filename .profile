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
if [ -f "$HOME/.aliases" ]; then
    source "$HOME/.aliases"
fi
if [ -f "$HOME/.path" ]; then
    source "$HOME/.path"
fi
if [ -f "$HOME/.exports" ]; then
    source "$HOME/.exports"
fi
## Stuff that I don't upload to GitHub
if [ -f "$HOME/.private" ]; then
    source "$HOME/.private"
fi
if [ -e "${HOME}/.iterm2_shell_integration.bash" ]; then
    source "${HOME}/.iterm2_shell_integration.bash"
fi

