#!/bin/sh

# Stow mbfraga dotfile

if [[ $# -lt 1 ]]; then
   echo "Nothing to stow. Please provide name of directory."
   exit
else
   echo "Stowing $1"
   stow -t "$HOME/" "$1" --ignore='^(?!\.).+$'
fi



