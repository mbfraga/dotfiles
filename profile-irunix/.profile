
if [[ -z "$XDG_CONFIG_HOME" ]]; then
   export XDG_CONFIG_HOME="$HOME/.config"
fi
if [[ -z "$XDG_CACHE_HOME" ]]; then
   export XDG_CACHE_HOME="$HOME/.config"
fi
if [[ -z "$XDG_DATA_HOME" ]]; then
   export XDG_DATA_HOME="$HOME/.local/share"
fi
if [[ -z "$LANG" ]]; then
   export LANG="en_US.UTF-8"
fi


# PATH
if [[ -d "$HOME/gitland/scripts" ]]; then
   export PATH="$HOME/gitland/scripts:$PATH"
fi

if [[ -d "$HOME/bin" ]]; then
   export PATH="$HOME/bin:$PATH"
fi

export QT_QPA_PLATFORMTHEME=gtk2
export BROWSER=qutebrowser
export VISUAL=nvim
export EDITOR=nvim
export TERMINAL="st"

. /usr/share/defaults/etc/profile.d/50-budgie-accessibility.sh
. /usr/share/defaults/etc/profile.d/50-history.sh
. /usr/share/defaults/etc/profile.d/50-umask.sh
. /usr/share/defaults/etc/profile.d/50-dircolors.sh
. /usr/share/defaults/etc/profile.d/70-snapd.sh
. /usr/share/defaults/etc/profile.d/vte.sh
