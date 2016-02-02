# ~/.bashrc: executed by bash(1) for interactive shells.

# If not running interactively, don't do anything.
[[ "$-" != *i* ]] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi


# -------------------------------------------------------------------
# Shell Options
# -------------------------------------------------------------------

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
# shopt -s cdspell


# -------------------------------------------------------------------
# Completion options
# -------------------------------------------------------------------

# These completion tuning parameters change the default behavior of bash_completion:

# Define to access remotely checked-out files over passwordless ssh for CVS
# COMP_CVS_REMOTE=1

# Define to avoid stripping description in --option=description of './configure --help'
# COMP_CONFIGURE_HINTS=1

# Define to avoid flattening internal contents of tar files.
# COMP_TAR_INTERNAL_PATHS=1

# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
# [[ -f /etc/bash_completion ]] && . /etc/bash_completion


# -------------------------------------------------------------------
# History Options
# -------------------------------------------------------------------

# Don't put duplicate lines in the history.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls:ll'

# Whenever displaying the prompt, write the previous line to disk.
# export PROMPT_COMMAND="history -a"


# -------------------------------------------------------------------
# Umask
# -------------------------------------------------------------------
# /etc/profile sets 022, removing write perms to group + others.
# Set a more restrictive umask: i.e. no exec perms for others:
# umask 027
# Paranoid: neither group nor others have any perms:
# umask 077


# -------------------------------------------------------------------
# RVM
# -------------------------------------------------------------------

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"

# Load RVM if it is installed,
#  first try to load  user install
#  then try to load root install, if user install is not there.
if [ -s "$HOME/.rvm/scripts/rvm" ] ; then
  . "$HOME/.rvm/scripts/rvm"
elif [ -s "/usr/local/rvm/scripts/rvm" ] ; then
  . "/usr/local/rvm/scripts/rvm"
fi

# -------------------------------------------------------------------
# Aliases
# -------------------------------------------------------------------

if [ -f ~/.bash_aliases ] ; then
  source ~/.bash_aliases;
fi


# -------------------------------------------------------------------
# GIT
# -------------------------------------------------------------------

# Allows you to see repository status in your prompt.
if [ -f ~/.git_prompt ] ; then
  source ~/.git_prompt;
fi

# Add autocomplete functionality to git.
if [ -f ~/.git_completion ] ; then
  source ~/.git_completion
fi

# -------------------------------------------------------------------
# Colours cheat sheet for prompt & ls
# -------------------------------------------------------------------
#
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
#

# -------------------------------------------------------------------
# Prompt
# -------------------------------------------------------------------
#
# \u                  = user
# @                   = symbol
# \h                  = host
# \w                  = working directory
# $(__git_ps1 "(%s)") = use the .bash_git to see repository status
# \n                  = break line
# λ                   = symbol
# $(tput sgr0)        = prompt
#
# \e[32m\] = Green   for dev
# \e[33m\] = Yellow  for pre-prod
# \e[31m\] = Red     for prod
#

PS1='\e[32m\]\u@\h \e[36m\]\w \e[32m\]$(__git_ps1 "(%s)")\nλ \e[0m\]$(tput sgr0)'
# PS1='\e[33m\]\u@\h \e[36m\]\w \e[32m\]$(__git_ps1 "(%s)")\nλ \e[0m\]\[$(tput sgr0)\]'
# PS1='\e[31m\]\u@\h \e[36m\]\w \e[32m\]$(__git_ps1 "(%s)")\nλ \e[0m\]\[$(tput sgr0)\]'


# -------------------------------------------------------------------
# ls
# -------------------------------------------------------------------
#
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
# 
# Using trial and error (and a little bash script I wrote... my first one ever! :) I worked out all the colour codes, at least my interpretation of them -
# 
# These can even be combined, so that a parameter like:
# di=5;31;42
#

# Colour ls
LS_COLORS='di=33:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=31:ex=35:*.rpm=90'
export LS_COLORS

# Order ls
# This controls the way sorting on character level works — while the default
# would be to sort dotfiles inline, this will make sort list dotfiles first.
export LC_ALL="C"
