# i3

## Autostart
Most of the services I run via systemd or my startx script.

## Launching Applications
I've moved from simple bindings like `Meta+f` to open the web browser, to using
a simple launcher. Now `Mod+r` runs the launchers, and I press `f` to open the
web browser. This doesn't add much friction, and allows me to keep a wide array
of application bindings that don't undermine window managing bindings.

This functionality is handled by a custom rofi script that can be found in the
rofi dotfiles. This could be done via rofi-blezz, but since I don't use most of
its features, I don't feel like compiling it on all my hosts.

This is a subset of the bindings:
```
Mod+r
   f   - web browser
   t   - terminal
   e   - file manager
   w   - weechat
   s   - speedcrunch
   g   - steam
   m   - mbmain
   q   - qnr
   c   - telegram
   a   - ncmpcpp
   n w - newsboat (newsbeuter)
   n p - podboat (podbeuter)
```


## Open_if_noinst

For several applications, I use open_if_noinst when run from the launcher. This
script will check if the application is running. If it __is__ running, then it
focuses it, otherwise it launches a new instance. This is a big part of my
workflow, since it reduces of movement friction. Regardless of whether weechat
is running, and where I placed it, `Mod+r w` will always land me on weechat.


## Workspace Naming / Assigning
I don't assign applications to workspaces, since I prefer a more dynamic
workflow. Therefore naming is not too important for me.

I do assign workspaces 1-6 to my main monitor and a special workspace labeled ∞
to my secondary monitor, which I can access via `modifier+grave`. This has some
caveats but tends to fit well with my workspaces, where my secondary monitors
are kept with more referential information and therefore don't need many
workspaces.


## Screenshot
![i3-irunix](https://github.com/mbfraga/dotfiles/blob/master/i3-irunix/i3.png)
