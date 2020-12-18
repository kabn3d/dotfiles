# Helpers
alias ls="ls ${colorflag}"  # Always use color output for 'ls'
alias ll="ls -l"

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# tree
# alias tree = 'tree -a -I "\.DS_Store|\.git|node_modules|vendor\/bundle" -N'

# vim
alias vi='vim'
alias nvim='vim -N -u NONE -i NON' # Use plain vim

if ! (command -v vim) > /dev/null 2>&1; then
  alias vim=vi
fi

# etc
alias sudo='sudo ' # Enable aliases to be 'sudo' ed

# Recursively delete `.DS_Store` files
alias cleanup="find ${HOME} -name '*.DS_Store' -type f -ls -delete"

# Remove broken symlinks
alias clsym="find -L . -name . -o -type d -prune -o -type l -exec rm {} +"
