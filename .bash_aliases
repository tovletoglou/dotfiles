# -------------------------------------------------------------------
# Aliases
# -------------------------------------------------------------------

# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.

alias ..='cd ..'
alias vi='vim'                                       # link to vi to vim
alias cp='cp -v'                                     # explain what is being done
alias rm='rm -i'                                     # prompt before every removal
alias mv='mv -v'                                     # explain what is being done
alias df='df -h'                                     # print sizes in human readable format
alias du='du -h'                                     # print sizes in human readable format
alias ll='ls -Alh --group-directories-first --color' # print everything & as long list & print sizes in human readable format & print first the directories & add color to directories
alias ls='ls -F --color'                             # append indicator (one of */=>@|) to entries & add color to directories
alias dir='dir -F --color'                           # append indicator (one of */=>@|) to entries & add color to directories
alias free='free -mhto'                              # show output in MB & human readable output & display total for RAM + swap & use old format
alias grep='grep --color -in'                        # show differences in colour & ignore case distinctions & print line number
alias egrep='egrep --color=auto'                     # show differences in colour
alias fgrep='fgrep --color=auto'                     # show differences in colour
