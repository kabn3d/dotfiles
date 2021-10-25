watch="all"

if (builtin log) >& /dev/null; then
  builtin log
fi

# Detect which 'ls' flavor is in use
if ls --color > /dev/null 2>&1; then # GNU 'ls'
  colorflag='--color'
else # macOS 'ls'
  colorflag='-G'
fi