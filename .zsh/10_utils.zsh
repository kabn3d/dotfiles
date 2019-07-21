has() {
  type "$1" > /dev/null 2>&1
}


shell_has_started_interactively() {
  [ -n $PS1 ]
}
