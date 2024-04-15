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

. "$HOME/.cargo/env"


export QT_STYLE_OVERRIDE=kvantum

# Set environment variables
export ZSH="$HOME/.oh-my-zsh"
export ZDOTDIR="$HOME/dev-config/linux/zsh"
export GO_HOME="$HOME/go"
export BUN_HOME="$HOME/.bun"
export DENO_INSTALL="/home/drew/.deno"
export TURSO_HOME="$HOME/.turso" 
export JAVA_HOME="/usr/lib/jvm/java-21-openjdk-amd64/"
export ANDROID_HOME="/home/drew/Android/Sdk/"
export MAVEN_HOME="/opt/apache-maven-3.9.6/"
export PATH="$PATH:$BUN_HOME/bin"
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$MAVEN_HOME/bin"
export PATH="$PATH:$JAVA_HOME/bin"
export PATH="$PATH:$GO_HOME/bin"
export PATH="$PATH:$TURSO_HOME"
BAT_THEME="Dracula"
export CAPACITOR_ANDROID_STUDIO_PATH="/opt/android-studio/bin/studio.sh"
export EDITOR=nvim

