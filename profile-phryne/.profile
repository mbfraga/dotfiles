
if [[ -z "$XDG_CONFIG_HOME" ]]; then
   export XDG_CONFIG_HOME="$HOME/.config"
fi
if [[ -z "$XDG_CACHE_HOME" ]]; then
   export XDG_CACHE_HOME="$HOME/.config"
fi
if [[ -z "$XDG_DATA_HOME" ]]; then
   export XDG_DATA_HOME="$HOME/.local/share"
fi

# PATH
if [[ -d "$HOME/gitland/scripts" ]]; then
   export PATH="$HOME/gitland/scripts:$PATH"
fi
if [[ -d "$HOME/gitland/scripts/external/bin" ]]; then
   export PATH="$HOME/gitland/scripts/external/bin:$PATH"
fi


if [[ -d "$HOME/gitland/mbrun" ]]; then
   export PATH="$HOME/gitland/mbrun:$PATH"
fi

if [[ -d "$HOME/bin" ]]; then
   export PATH="$HOME/bin:$PATH"
fi


export QT_QPA_PLATFORMTHEME=gtk2
export BROWSER=qutebrowser
export VISUAL=nvim
export EDITOR=nvim
export TERMINAL="st"
export PAGER="less"

export DEFAULT_DISPLAY=eDP1
