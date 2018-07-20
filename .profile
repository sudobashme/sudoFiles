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
if [ -f "$HOME/.private" ]; then
    source "$HOME/.functions"
fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

