# .bashrc is for non-login interactive shells.
# Login shells source ~/.bash_profile

# ~/.bashrc: executed by bash(1) for interactive shells.

# If not running interactively, don't do anything.
[[ "$-" != *i* ]] && return



# -------------------------------------------------------------------
# Source global definitions
# -------------------------------------------------------------------

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
shopt -s cdspell



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
if [ -s "$HOME/.rvm/bin" ] ; then
  export PATH="$PATH:$HOME/.rvm/bin"
fi

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
  source ~/.bash_aliases
fi



# -------------------------------------------------------------------
# GIT
# -------------------------------------------------------------------

# Allows you to see repository status in your prompt.
if [ -f ~/.git_prompt ] ; then
  source ~/.git_prompt
fi

# Add autocomplete functionality to git.
if [ -f ~/.git_completion ] ; then
  source ~/.git_completion
fi



# -------------------------------------------------------------------
# Colours cheat sheet for prompt & ls
# -------------------------------------------------------------------

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



# -------------------------------------------------------------------
# Prompt
# -------------------------------------------------------------------

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

# On bash for Windows x86_64-pc-msys you can not have $(function) and \n in the same quotes enclose.
PS1='\e[32m\]\u@\h \e[36m\]\w \e[32m\]$(__git_ps1 "(%s)")'$'\nλ \e[0m\]'  # color for server: test
# PS1='\e[33m\]\u@\h \e[36m\]\w \e[32m\]$(__git_ps1 "(%s)")'$'\nλ \e[0m\]'  # color for server: stage
# PS1='\e[31m\]\u@\h \e[36m\]\w \e[32m\]$(__git_ps1 "(%s)")'$'\nλ \e[0m\]'  # color for server: production

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



# -------------------------------------------------------------------
# ls
# -------------------------------------------------------------------

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



# -------------------------------------------------------------------
# Drush (Drupal CLI tool)
# -------------------------------------------------------------------

# Include Drush bash customizations.
if [ -f "/var/aegir/.drush/drush.bashrc" ] ; then
  source /var/aegir/.drush/drush.bashrc
fi

# Include Drush completion.
if [ -f "/var/aegir/.drush/drush.complete.sh" ] ; then
  source /var/aegir/.drush/drush.complete.sh
fi

# Include Drush prompt customizations.
#if [ -f "/var/aegir/.drush/drush.prompt.sh" ] ; then
#  source /var/aegir/.drush/drush.prompt.sh
#fi



# -------------------------------------------------------------------
# npm command completion script
# -------------------------------------------------------------------

# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm

if type complete &>/dev/null; then
  _npm_completion () {
    local words cword
    if type _get_comp_words_by_ref &>/dev/null; then
      _get_comp_words_by_ref -n = -n @ -w words -i cword
    else
      cword="$COMP_CWORD"
      words=("${COMP_WORDS[@]}")
    fi

    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           npm completion -- "${words[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _npm_completion npm
elif type compdef &>/dev/null; then
  _npm_completion() {
    local si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 npm completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
elif type compctl &>/dev/null; then
  _npm_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       npm completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _npm_completion npm
fi



# -------------------------------------------------------------------
# end of .bashrc
# -------------------------------------------------------------------
