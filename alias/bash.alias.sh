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

# explain what is being done
alias mv='mv -v'

# prompt before every removal
alias rm='rm -i'

# -A, --almost-all           do not list implied . and ..
# -l                         use a long listing format
# -h, --human-readable       with -l, print sizes in human readable format
# --group-directories-first  group directories before files
alias ll='ls -Alhg --group-directories-first'

# append indicator (one of */=>@|) to entries & add color to directories
alias ls='ls -F --color'

# append indicator (one of */=>@|) to entries & add color to directories
alias dir='dir -F --color'

# print sizes in human readable format
alias df='df -h'

# print sizes in human readable format
alias du='du -h'

# -m, --mega          show output in megabytes
# -h, --human         show human-readable output
# -t, --total         show total for RAM + swap
# -w, --wide          wide output
alias free='free -mhtw'

# -i, --ignore-case   ignore case distinctions
# -n, --line-number   print line number with output lines
# --color=auto        use markers to highlight the matching strings
alias grep='grep -in --color=auto'
