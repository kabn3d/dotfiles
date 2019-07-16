has() {
  type "$1" > /dev/null 2>&1
}


shell_has_started_interactively() {
  [ -n $PS1 ]
}


# Detect which 'ls' flavor is in use
if ls --color > /dev/null 2>&1; then # GNU 'ls'
  colorflag='--color'
else # macOS 'ls'
  colorflag='-G'
fi

