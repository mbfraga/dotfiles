#!/bin/bash

if [[ -z "$NOROOT" ]]; then
   NOROOT=false
fi
if [[ -z "$HOST" ]]; then
   HOST="$(hostname)"
fi


function _stow () {
   # if a host-specific entry exists, use it isntead of the generic one
   hostver="$1-$HOST"
   if [[ -d "$hostver" ]]; then
      echo "   Stowing $hostver..."
      stow -t "$HOME/" "$hostver" --ignore='^(?!\.).+$'|| \
         $(echo "ERROR: stowing failed...Exiting."; exit 1)
   else
      if [[ -d "$1" ]]; then
         echo "   Stowing $1..."
         stow -t "$HOME/" "$1" --ignore='^(?!\.).+$' || \
            (echo "ERROR: stowing failed...Exiting."; exit 1)
      else
         echo "   $1 not found...ignoring..."
      fi
   fi
   
   if [[ $? -eq 1 ]]; then
      exit 1
   fi
}

# If your distro stupidly expects /etc/zsh/zshenv instead of /etc/zshenv,
# set ETC_ZSH_DIR=true
if [[ -z "$ETC_ZSH_DIR" ]];then
   ETC_ZSH_DIR=false
fi

echo -e "\nInstalling Dotfiless"
echo -e "--------------------\n"

echo -e "## ZSH \n"
if [ "$NOROOT" = false ]; then
   echo "   Copying /etc/zprofile. This requires root privileges"
   if [[ ! -e /etc/zprofile ]]; then
      sudo cp ./zsh/etc.zprofile /etc/zprofile || $(echo "ERROR: Needs root"; exit 1)
   else
      echo "   /etc/zprofile already exists."
      if ! grep -q "^\s*emulate sh -c 'source \/etc\/profile'" /etc/zprofile
      then
         echo 'WARNING: /etc/profile does not seem to be sourced by etc/zprofile'
      fi

   fi

   if [ "$ETC_ZSH_DIR" = true ]; then
      echo "   Creating /etc/zsh and symlinking /etc/zprofile"
      if [[ ! -e /etc/zsh ]];then
         sudo mkdir /etc/zsh || $(echo "ERROR: Failed to create /etc/zsh.";exit 1)
      fi
      if [[ ! -e /etc/zsh/zprofile ]]; then
         sudo ln -s /etc/zprofile /etc/zsh/zprofile
      else
         if ! grep -q "^\s*emulate sh -c 'source \/etc\/profile'" /etc/zsh/zprofile
         then
            echo 'WARNING: /etc/profile does not seem to be sourced by etc/zprofile'
         fi

      fi

   fi
   echo "   Root privileges will not be used for anything else."
   echo ""
fi

_stow zsh
echo "   creating $HOME/.cache/zsh"
mkdir -p $HOME/.cache/zsh

echo -e "\n## PROFILE"
_stow profile

echo -e "\n## NEOVIM\n"
_stow nvim
if [ "$(ls -A $XDG_CONFIG_HOME/nvim/plugged/)" ]; then
   echo "   Nvim plugins already installed. If you run into issues, try to update them."
else
   echo "   Installing nvim plugins."
   nvim +silent +PlugInstall +qall
fi

echo -e "\n## WEECHAT\n"
_stow weechat

echo -e "\n## MPV\n"
_stow mpv

echo -e "\n## DUNST\n"
_stow dunst

echo -e "\n## COMPTON\n"
_stow compton

echo -e "\n## NCMPCPP\n"
_stow ncmpcpp

echo -e "\n## QN\n"
_stow qn

echo -e "\n## RANGER\n"
_stow ranger

echo -e "\n## TMUX\n"
_stow tmux

echo -e "\n## I3STATUS\n"
_stow i3status

echo -e "\n## SWAY\n"
_stow sway

echo -e "\n## I3\n"
_stow i3

echo -e "\n## BSPWM\n"
_stow bspwm

echo -e "\n## SXHKD\n"
_stow sxhkd

echo -e "\n## I3BLOCKS\n"
_stow i3blocks

echo -e "\n## MPD\n"
_stow mpd

echo -e "\n## XINITRC\n"
_stow xinitrc

echo -e "\n## XSETTINGS\n"
_stow xsettings

echo -e "\n## STARDICT\n"
_stow stardict
