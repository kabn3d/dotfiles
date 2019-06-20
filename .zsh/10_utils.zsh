has() {
  type "$1" > /dev/null 2>&1
}

is_screen_running() {
  [ -n "$WINDOW" ]
}

is_tmux_running() {
  [ -n "$TMUX" ]
}

is_screen_or_tmux_running() {
  is_screen_running || is_tmux_runnning
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

function chpwd() {
  ls -lFh ${colorflag}
}

function showoptions() {
  set -o | sed -e 's/^no\(.*\)on$/\1  off/' -e 's/^no\(.*\)off$/\1  on/'
}

