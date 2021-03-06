#!/bin/sh
#
# ~/.xinitrc
#

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

export GPG_AGENT_INFO
export XKB_DEFAULT_OPTIONS=caps:super
setxkbmap -option caps:super
#xmodmap -e "keycode 124 = Delete"
#xkbcomp -I $XDG_CONFIG_HOME/xkb $XDG_CONFIG_HOME/xkb/keymap/mykbd $DISPLAY

function eventdlock () {
   eventdctl nd stop
   i3lock -c "333333" -n -e 
   eventdctl reload
}

session=${1:-i3}
case $session in
   i3|i3wm         ) 
      export DESKTOP_SESSION=gnome
      # both commands below required for eventd
      systemctl --user set-environment DISPLAY=$DISPLAY
      eventdctl nd switch xcb ${DISPLAY}
      xset s 300
      xset r rate 210 18
      xss-lock -- eventdlock &
      exec i3; vlock
      ;;
   mate            ) exec mate-session;;
   budgie          ) exec budgie-desktop;;
   bspwm           )
      export DESKTOP_SESSION=gnome
      systemctl --user set-environment DISPLAY=$DISPLAY
      eventdctl nd switch xcb ${DISPLAY}
      sxhkd &
      xset s 300
      xset r rate 210 18
      xss-lock -- eventdlock &
      exec bspwm; vlock
      ;;
   openbox         )
      export DESKTOP_SESSION=gnome
      systemctl --user set-environment DISPLAY=$DISPLAY
      eventdctl nd switch xcb ${DISPLAY}
      sxhkd &
      xset s 300
      xset r rate 210 18
      xss-lock -- eventdlock &
      exec openbox-session; vlock
      ;;

   # No known session, try to run it as a command
   *               ) exec $1;;
esac
#EOF
