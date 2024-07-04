# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ "$TERM" = "linux" ]; then
    echo -en "\e]P0282828" #black
    echo -en "\e]P1FC7B7B" #darkred
    echo -en "\e]P24FB349" #darkgreen
    echo -en "\e]P3B5982E" #brown
    echo -en "\e]P47895FF" #darkblue
    echo -en "\e]P5DE7AE4" #darkmagenta
    echo -en "\e]P631B2B2" #darkcyan
    echo -en "\e]P7CFCFCF" #lightgrey
    echo -en "\e]P85C5C5C" #darkgrey
    echo -en "\e]P9FC7B7B" #red
    echo -en "\e]PA4FB349" #green
    echo -en "\e]PBB5982E" #yellow
    echo -en "\e]PC7895FF" #blue
    echo -en "\e]PDDE7AE4" #magenta
    echo -en "\e]PE31B2B2" #cyan
    echo -en "\e]PFFFFFFF" #white
    clear #for background artifacting
fi


if [ $XDG_SESSION_TYPE = "wayland" ]; then
    export MOZ_ENABLE_WAYLAND=1
fi
