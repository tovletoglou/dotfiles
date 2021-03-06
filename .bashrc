# ------------------------------------------------------------------------------
# Check interactive shells
# ------------------------------------------------------------------------------

# If not running interactively, don't do anything.
[[ "$-" != *i* ]] && return


# ------------------------------------------------------------------------------
# Source global definitions
# ------------------------------------------------------------------------------
if [ "$TERM" != "xterm" ] ; then # Fix non 256 xterm
  if [ -f /etc/bashrc ]; then
    . /etc/bashrc
  fi
fi


# ------------------------------------------------------------------------------
# Define dotfiles location
# ------------------------------------------------------------------------------
if [ -f "$HOME/.bashrc" ]; then
  BASHRC_FILE="$(readlink -f "$HOME"/.bashrc)"
  BASHRC_LOCATION="$(dirname "$BASHRC_FILE")"
fi

# ------------------------------------------------------------------------------
# Shell Options
# ------------------------------------------------------------------------------

# Don't wait for job termination notification.
# set -o notify

# Don't use ^D to exit.
# set -o ignoreeof

# Use case-insensitive filename globbing.
# shopt -s nocaseglob

# Make bash append rather than overwrite the history on disk.
# shopt -s histappend

# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
shopt -s cdspell


# ------------------------------------------------------------------------------
# Completion options
# ------------------------------------------------------------------------------

# These completion tuning parameters change the default behavior of bash_completion:

# Define to access remotely checked-out files over passwordless ssh for CVS
# COMP_CVS_REMOTE=1

# Define to avoid stripping description in --option=description of './configure --help'
# COMP_CONFIGURE_HINTS=1

# Define to avoid flattening internal contents of tar files.
# COMP_TAR_INTERNAL_PATHS=1


# ------------------------------------------------------------------------------
# History Options
# ------------------------------------------------------------------------------

# Don't put duplicate lines in the history.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls:ll:cd'

# Whenever displaying the prompt, write the previous line to disk.
# export PROMPT_COMMAND="history -a"


# ------------------------------------------------------------------------------
# Umask
# ------------------------------------------------------------------------------

# /etc/profile sets 022, removing write perms to group + others.
# Set a more restrictive umask: i.e. no exec perms for others:
# umask 027
# Paranoid: neither group nor others have any perms:
# umask 077


# ------------------------------------------------------------------------------
# Colour cheat sheet for prompt & ls
# ------------------------------------------------------------------------------

# 0   = default colour
# 1   = bold
# 4   = underlined
# 5   = flashing text
# 7   = reverse field
# 31  = red
# 32  = green
# 33  = orange
# 34  = blue
# 35  = purple
# 36  = cyan
# 37  = grey
# 40  = black background
# 41  = red background
# 42  = green background
# 43  = orange background
# 44  = blue background
# 45  = purple background
# 46  = cyan background
# 47  = grey background
# 90  = dark grey
# 91  = light red
# 92  = light green
# 93  = yellow
# 94  = light blue
# 95  = light purple
# 96  = turquoise
# 100 = dark grey background
# 101 = light red background
# 102 = light green background
# 103 = yellow background
# 104 = light blue background
# 105 = light purple background
# 106 = turquoise background


# ------------------------------------------------------------------------------
# Prompt
# ------------------------------------------------------------------------------

# PS1 explained ----------------------------------
# \e]0;\w\a              = add current path (working directory) to terminal's title (or tab) bar (tested on Windows/ConEmu & Terminator/Fedora)
# \u                     = current user
# @                      = just the '@' symbol
# \h                     = host
# \w                     = current path (working directory)
# $(__git_ps1 "(%s)")'$' = use the 'git.prompt.sh' to check repository status
# \n                     = break line
# $                      = just the '$' symbol

# Colors -----------------------------------------
# \e[32m              = green   for dev
# \e[33m              = yellow  for pre-prod
# \e[31m              = red     for prod
# \e[0m               = reset colors

# Info -------------------------------------------
# Make sure all escape sequences are enclosed in [..] to prevent line wrapping issues.
# Problematic code:
#   PS1='\e[36m\$ \e(B\e[m'
# Correct code:
#   PS1='\[\e[36m\]\$ \[\e(B\e[m\]'

# Info for Windows -------------------------------
# FYI: On bash for Windows x86_64-pc-msys you can not have $(function) and \n in the same quotes enclose.

PS1='\[\e]\]0;\w\a\u@\h \[\e[33m\]\w \[\e[32m\]$(__git_ps1 "(%s)")'$'\[\e[0m\]\n$ '

# Alternative method getting the branch.
#
# git_get_branch() {
#   branch="$( git branch 2>&1 | grep "^*" | sed 's/ //g;s/^*//g')"
#   [[ ${#branch} > 0 ]] && echo "($branch)"
# }
#
# Create new prompt:
# PS1="\e[32m\]\u@\h \e[36m\]\w \e[32m\]\$(__git_ps1 ' { %s }')\nλ \e[0m\]$(tput sgr0)"
#
# Or update the existing one:
# PS1="$PS1 \$(git_get_branch)"


# ------------------------------------------------------------------------------
# ls
# ------------------------------------------------------------------------------

# di = directory
# fi = file
# ln = symbolic link
# pi = fifo file
# so = socket file
# bd = block (buffered) special file
# cd = character (unbuffered) special file
# or = symbolic link pointing to a non-existent file (orphan)
# mi = non-existent file pointed to by a symbolic link (visible when you type ls -l)
# ex = file which is executable (ie. has 'x' set in permissions).
#
# The *.rpm=90 parameter at the end tells ls to display any files ending in .rpm in the specified colour, in this case colour 90 (dark grey). This can be applied to any types of files (eg. you could use '*.png=35' to make jpeg files appear purple.) As many or as few parameters as you like can go into the LS_COLORS variable, as long as the parameters are separated by colons.

# Colour ls
LS_COLORS='di=33:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=31:ex=35:*.rpm=90'
export LS_COLORS

# Order ls
# This controls the way sorting on character level works — while the default
# would be to sort dotfiles inline, this will make sort list dotfiles first.
export LC_ALL="C"


# ------------------------------------------------------------------------------
# Locales
# ------------------------------------------------------------------------------
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8


# ------------------------------------------------------------------------------
# Aliases
# ------------------------------------------------------------------------------
if [ -f "$BASHRC_LOCATION/alias/bash.alias.sh" ] ; then
  source "$BASHRC_LOCATION/alias/bash.alias.sh"
fi



# ------------------------------------------------------------------------------
# Other environment variables
# ------------------------------------------------------------------------------

# The EDITOR defines the default text editor for the terminal.
# Example use is when typing ctrl-x e (that is holding control key press x and
# then e). The shell will take what you've written on the command line thus far
# and paste it into the editor specified by $EDITOR
export EDITOR="vi"


# ------------------------------------------------------------------------------
# RVM
# ------------------------------------------------------------------------------
enable_rvm_customizations () {
  if hash rvm 2>/dev/null; then
    # Add RVM to PATH
    if [ -s "$HOME/.rvm/bin" ] ; then
      export PATH="$PATH:$HOME/.rvm/bin"
    fi

    # Load RVM if it is installed, first try to load user install then try to load
    # root install, if user install is not there.
    if [ -s "$HOME/.rvm/scripts/rvm" ] ; then
      . "$HOME/.rvm/scripts/rvm"
    elif [ -s "/usr/local/rvm/scripts/rvm" ] ; then
      . "/usr/local/rvm/scripts/rvm"
    fi
  fi
}
enable_rvm_customizations

# ------------------------------------------------------------------------------
# GIT
# ------------------------------------------------------------------------------
enable_git_customizations () {
  if hash git 2>/dev/null; then
    # Allows you to see repository status in your prompt.
    if [ -f "$BASHRC_LOCATION/git/git.prompt.sh" ] ; then
      source "$BASHRC_LOCATION/git/git.prompt.sh"
    fi

    # Add autocomplete functionality to git.
    if [ -f "$BASHRC_LOCATION/git/git.completion.sh" ] ; then
      source "$BASHRC_LOCATION/git/git.completion.sh"
    fi

    # Add `git subrepo` command
    if [ -f "$BASHRC_LOCATION/git/git-subrepo/.rc" ] ; then
      source "$BASHRC_LOCATION/git/git-subrepo/.rc"
    fi

    # Add `merge-git-to-git` command
    if [ -f "$BASHRC_LOCATION/git/migrate-git-to-git.sh" ] ; then
      source "$BASHRC_LOCATION/git/migrate-git-to-git.sh"
    fi
  fi
}
enable_git_customizations


# ------------------------------------------------------------------------------
# Drush
# ------------------------------------------------------------------------------
enable_drush_customizations () {
  if hash drush 2>/dev/null; then
    # Include Drush bash customizations.
    if [ -f "$BASHRC_LOCATION/drush/drush.bashrc" ] ; then
      source "$BASHRC_LOCATION/drush/drush.bashrc"
    fi

    # Include Drush completion.
    if [ -f "$BASHRC_LOCATION/drush/drush.completion.sh" ] ; then
      source "$BASHRC_LOCATION/drush/drush.completion.sh"
    fi

    # Include Drush prompt customizations.
    # if [ -f "$BASHRC_LOCATION/drush/drush.prompt.sh" ] ; then
    #  source "$BASHRC_LOCATION/drush/drush.prompt.sh"
    # fi
  fi
}
enable_drush_customizations


# ------------------------------------------------------------------------------
# node.js & npm
# ------------------------------------------------------------------------------
enable_npm_customizations () {
  if hash npm 2>/dev/null; then
    # Include npm completion.
    if [ -f "$BASHRC_LOCATION/npm/npm.completion.sh" ] ; then
      source "$BASHRC_LOCATION/npm/npm.completion.sh"
    fi
  fi
}
enable_npm_customizations


# ------------------------------------------------------------------------------
# Vagrant
# ------------------------------------------------------------------------------
enable_vagrant_customizations () {
  if hash vagrant 2>/dev/null; then
    # Include vagrant completion.
    if [ -f "$BASHRC_LOCATION/vagrant/vagrant.completion.sh" ] ; then
      source "$BASHRC_LOCATION/vagrant/vagrant.completion.sh"
    fi

    # If the OS is Linux change the Vagrant dot file directory name.
    if [[ "$(uname)" == 'Linux' ]]; then
      export VAGRANT_DOTFILE_PATH=.vagrant-linux
    fi
  fi
}
enable_vagrant_customizations


# ------------------------------------------------------------------------------
# Print welcome message
# ------------------------------------------------------------------------------

# 'last' command is not supported on Windows bash (MINGW32, MSYS2)
if hash last 2>/dev/null; then
  LAST_LOGIN=$(last -1 -R "$USER" | head -1 | cut -c 23-38)
else
  LAST_LOGIN=""
fi

# The $MSYSTEM variable exist only on Windows bash (MINGW32, MSYS2)
if [ ! -z "$MSYSTEM" ]      ; then echo "System          $MSYSTEM"      ; fi
if [ ! -z "$OSTYPE" ]       ; then echo "OS Type         $OSTYPE"       ; fi
if [ ! -z "$HOSTNAME" ]     ; then echo "Host            $HOSTNAME"     ; fi
if [ ! -z "$SHLVL" ]        ; then echo "Console level   $SHLVL"        ; fi
if [ ! -z "$HOME" ]         ; then echo "Home path       $HOME"         ; fi
if [ ! -z "$SHELL" ]        ; then echo "Shell           $SHELL"        ; fi
if [ ! -z "$BASH_VERSION" ] ; then echo "Bash            $BASH_VERSION" ; fi
if [ ! -z "$TERM" ]         ; then echo "Terminal        $TERM"         ; fi
if [ ! -z "$LAST_LOGIN" ]   ; then echo "Last login time $LAST_LOGIN"   ; fi

# If you want to print all the variables for the open session:
# printenv
