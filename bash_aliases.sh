# ------------------------------------------------------------------------------
# Aliases
# ------------------------------------------------------------------------------

# If these alias are enabled they will be used instead of any instructions they
# may mask. For example, alias `rm='rm -i'` will mask the `rm` application.
# To override the alias instruction use a `\` before, ie `\rm` will call the
# real `rm` not the alias.

 # go back on directory
alias ..='cd ..'

# link to vi to vim
alias vi='vim'

# explain what is being done
alias cp='cp -v'

# prompt before every removal
alias rm='rm -i'

# explain what is being done
alias mv='mv -v'

# print sizes in human readable format
alias df='df -h'

# print sizes in human readable format
alias du='du -h'

# print everything as long list with sizes in human readable format
# order first the directories and add color to directories
alias ll='ls -Alh --group-directories-first --color'

# append indicator (one of */=>@|) to entries & add color to directories
alias ls='ls -F --color'

# append indicator (one of */=>@|) to entries & add color to directories
alias dir='dir -F --color'

# show output in MB & human readable output
# display total for RAM + swap & use old format
alias free='free -mhto'

# show differences in colour & ignore case distinctions & print line number
alias grep='grep --color -in'

# show differences in colour
alias egrep='egrep --color=auto'

# show differences in colour
alias fgrep='fgrep --color=auto'
