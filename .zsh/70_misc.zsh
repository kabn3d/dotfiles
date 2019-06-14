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
       && ${cmd} != scp
       && ${cmd} != less
       && ${cmd} != head
       && ${cmd} != ping
       && ${cmd} != open
       && ${cmd} != file
       && ${cmd} != which
       && ${cmd} != whois
       && ${cmd} != drill
       && ${cmd} != uname
       && ${cmd} != pacman
       && ${cmd} != code
    ]]
}

