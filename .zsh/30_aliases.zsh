alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias ls="ls ${colorflag}"  # Always use color output for 'ls'
alias l="ls -lAhF"          # Show hidden all files
alias ll="ls -lFh"          # Show all files in long format
alias lld="ls -l | grep ^d" # Show only directories

# Helpers
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# tree
# alias tree = 'tree -a -I "\.DS_Store|\.git|node_modules|vendor\/bundle" -N'

# History
alias hsg='history -E 1| grep'

# vim
alias vi='vim'
alias v='vim'
alias vir='vim -R' # Read only
alias vr='vim -R'  # Read only
alias nvim='vim -N -u NONE -i NON' # Use plain vim

# etc
alias g="git"
alias tm="tmux"

alias sudo='sudo ' # Enable aliases to be 'sudo' ed

alias pwdc='pwd | tr -d "\n" | pbcopy'
alias pwdc='pwd | tr -d "\n" | pbcopy'

alias reload!='source ~/.zshrc'

# Reload the shell (i.e. invoke as login shell)
alias relogin!='exec $SHELL -l'

# clean and cd
alias clr='cd ~ && clear'

# Recursively delete `.DS_Store` files
alias cleanup="find ${HOME} -name '*.DS_Store' -type f -ls -delete"

# Remove broken symlinks
alias clsym="find -L . -name . -o -type d -prune -o -type l -exec rm {} +"

