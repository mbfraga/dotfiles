#!/usr/bin/env zsh

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
#zstyle ":vcs_info:(git*):*" get-revision true
zstyle ":vcs_info:(git*):*" check-for-changes true
local _branch="%c%u%{$fg[white]%}%b"
zstyle ":vcs_info:*" stagedstr "%{$fg[yellow]%}✓%{$reset_color%}"
zstyle ":vcs_info:*" unstagedstr "%{$fg[red]%}✗%{$reset_color%}"
zstyle ":vcs_info:git*" formats "$_branch%{$reset_color%}"
#zstyle ':vcs_info:git*' formats "%b"
setopt prompt_subst

precmd() {
   vcs_info
}


function zle-line-init zle-line-finish zle-keymap-select {
  zle reset-prompt
  zle -R
}

zle -N zle-line-init
zle -N zle-keymap-select
zle -N zle-line-finish
#
if [[ ! -z "$SSH_CLIENT" ]]; then
   _ssh="$(echo -e "%{\033[0;38m%}⇄")" # ssh icon
fi

local _user="$(echo -e "%{\033[0;37m%}%M")"
local _path="$(echo -e "%{\033[0;33m")%}%(8~|...|)%7~"
local _prompt="%{$fg[white]%}→"

PROMPT='$(
printf "\n"
echo "$_user $_path"
echo -e "${vcs_info_msg_0_}$_prompt %{%f%k%}"
)'
