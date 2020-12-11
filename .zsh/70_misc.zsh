# Ignore command
zshaddhistory() {
  local line=${1%%$'\n'}
  local cmd=${line%% *}

  # Only those that satisfy all of the following conditions are added to the history
  [[ ${#line} -ge 5
    && ${cmd} != ..*
    && ${cmd} != (l|l[sl])
    && ${cmd} != cd
  ]]
}
