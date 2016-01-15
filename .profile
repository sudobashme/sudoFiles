#!/usr/bin/env bash
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
# - - - - - - - - - - - - [ sudofile project ] - - - - - - - - - - - - - - - - 
#
# - - - - - - - - - - - - - - [ .profile ] - - - - - - - - - - - - - - - - - - 
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
if [ -f "$HOME/.extra" ]; then
    source "$HOME/.extra"
fi
if [ -f "$HOME/.functions" ]; then
    source "$HOME/.functions"
fi
if [ -f "$HOME/pythondev/bin/activate" ]; then
    source "$HOME/pythondev/bin/activate"
fi
