#!/bin/zsh

if [[ -e "$ZDOTDIR/zshrc" ]]; then
   source "$ZDOTDIR/zshrc"
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
