# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
PATH="$HOME/.rvm/bin:$PATH"

#PATH="$HOME/android/sdk/platform-tools:$HOME/android/sdk/tools:$PATH"


# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
	PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
	PATH="$HOME/.local/bin:$PATH"
fi

export GOPATH=$HOME/gocode
PATH="$GOPATH/bin:/usr/local/go/bin:$PATH"

if [ -d "$HOME/opt/cross/bin" ] ; then
	PATH="$HOME/opt/cross/bin:$PATH"
fi

export PATH


# WINE
export WINEARCH=win32
export WINEPREFIX='/home/lain/.wine32'

#export LANG=en_US.utf-8

# if running bash
if [ -n "$BASH_VERSION" ]; then
	# include .bashrc if it exists
	if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	fi
fi
