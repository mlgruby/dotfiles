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

# set PATH so it includes coursier bin if it exists
if [ -d "$HOME/.local/share/coursier/bin" ] ; then
  PATH="$PATH:$HOME/.local/share/coursier/bin"
fi

if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]; then
  . /home/vlad/.nix-profile/etc/profile.d/nix.sh;
fi # added by Nix installer

if [ -e $HOME/.nix-profile/bin/java ]; then
  export JAVA_HOME="${$(readlink -e $HOME/.nix-profile/bin/java)%*/bin/java}"
fi

export JAVA_TOOL_OPTIONS="
-Dconfig.override_with_env_vars=true
-Djava.net.preferIPv4Stack=true
-Duser.timezone=UTC
-Dquill.macro.log=false
"

# fzf
export FZF_DEFAULT_COMMAND='fd --type f --color=never --hidden'
export FZF_DEFAULT_OPTS='--no-height --color=bg+:#343d46,gutter:-1,pointer:#ff3c3c,info:#0dbc79,hl:#0dbc79,hl+:#23d18b'

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :50 {}'"

export FZF_ALT_C_COMMAND='fd --type d . --color=never --hidden'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"

export MANPAGER="sh -c 'col -bx | bat -l man -p'"


if [[ $(command -v keychain) && -e ~/.ssh/id_rsa ]]; then
  keychain --quiet id_rsa
  source ~/.keychain/*-sh
fi

# source local settings
if [ -f "$HOME/.local/.profile" ] ; then
  source "$HOME/.local/.profile"
fi

