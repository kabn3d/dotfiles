# Ignore command
zshaddhistory() {
  local line=${1%%$'\n'}
  local cmd=${line%% *}

  # Only those that satisfy all of the following conditions are added to the history
  [[ ${#line} -ge 5
    && ${cmd} != ..*
    && ${cmd} != (l|l[sl])
    && ${cmd} != cd
    && ${cmd} != man
    && ${cmd} != cat
    && ${cmd} != pwd
    && ${cmd} != echo
    && ${cmd} != touch
    && ${cmd} != (v|vr|vim)
    && ${cmd} != (tm|tmux)
    && ${cmd} != less
    && ${cmd} != head
    && ${cmd} != ping
    && ${cmd} != open
    && ${cmd} != file
    && ${cmd} != uname
    && ${cmd} != which
    && ${cmd} != type
    && ${cmd} != file
    && ${cmd} != whois
    && ${cmd} != drill
    && ${cmd} != uname
    && ${cmd} != pacman
    && ${cmd} != brew
    && ${cmd} != code
  ]]
}

