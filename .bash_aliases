# -------------------------------------------------------------------
# Aliases
# -------------------------------------------------------------------

# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.

alias ..='cd ..'
alias vi='vim'
alias cp='cp -iv'
alias rm='rm -i'
alias mv='mv -iv'
alias df='df -h'
alias du='du -h'
alias ll='ls -Alh --group-directories-first --color'
alias ls='ls -F --color'
alias dir='dir -F --color'
alias free='free -mhto'
alias grep='grep --color -in'
alias drupalcs='phpcs --standard=/var/www/coder/coder_sniffer/Drupal/ --extensions=php,module,inc,install,test,profile,theme,js,css,info,txt'

# alias less='less -r'                          # raw control characters
# alias whence='type -a'                        # where, of a sort
# alias grep='grep --color'                     # show differences in colour
# alias egrep='egrep --color=auto'              # show differences in colour
# alias fgrep='fgrep --color=auto'              # show differences in colour
# alias ls='ls -hF --color=tty'                 # classify files in colour
# alias dir='ls --color=auto --format=vertical'
# alias vdir='ls --color=auto --format=long'
# alias la='ls -A'                              # all but . and ..
# alias l='ls -CF'                              #
