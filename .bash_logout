# ~/.bash_logout: executed by bash(1) when login shell exits.

# when leaving the console clear the screen to increase privacy.
# Check if level of console is 1 (there are no console inside a console)
if [ "$SHLVL" = 1 ]; then
  [ -x /usr/bin/clear ] && /usr/bin/clear
fi
