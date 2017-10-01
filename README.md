# dotfiles

## Introduction

This is a git repository that holds all my dotfiles. I keep this repo cloned
inside one of my syncthing folders, which gets synchronized across all my
machines. The install.sh script can then stow all the required config
directories depending on the hostname. Any shared configs will get
automatically synchronized by syncthing.

See below for a diagram of how the synchronization works.

```
┌──────────────────────────────────────────┐
│ GIT                                      │
│ github.com/mbfraga/dotfiles (git remote) │
└┬─────────────────────────────────────────┘
 │ ┌────────────────────────────────────────┐
 │ │ SYNCTHING                              │
 └─┤  ~/syncthing/main/dotfiles (git clone) │
   └┬───────────────────────────────────────┘
    │ ┌─────────────────────────────┐
    │ │ HOST 1                      │  ┌──────┐  ┌───────────┐
    ├─┤  ~/syncthing/main/dotfiles  ├──┤ STOW ├──┤ HOST 1 ~/ │
    │ └──────────────┬──────────────┘  └──────┘  └───────────┘
    │ ┌──────────────┴──────────────┐
    │ │ HOST 2                      │  ┌──────┐  ┌───────────┐
    ├─┤  ~/syncthing/main/dotfiles  ├──┤ STOW ├──┤ HOST 2 ~/ │
    │ └──────────────┬──────────────┘  └──────┘  └───────────┘
    │ ┌──────────────┴──────────────┐
    │ │ HOST 3                      │  ┌──────┐  ┌───────────┐
    └─┤  ~/syncthing/main/dotfiles  ├──┤ STOW ├──┤ HOST 3 ~/ │
      └─────────────────────────────┘  └──────┘  └───────────┘
 
```

## Install

run ./install.sh


