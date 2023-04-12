# Helpers
alias ls="ls ${colorflag}"  # Always use color output for 'ls'
alias ll="ls -l"

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# vim
alias vi='vim'
alias nvim='vim -N -u NONE -i NON' # Use plain vim

alias g='git'
alias d='docker'
alias dc='docker compose'

alias pip='pip3'
alias python='python3'
alias py='python3'

if ! (command -v vim) > /dev/null 2>&1; then
  alias vim=vi
fi

# etc
alias sudo='sudo ' # Enable aliases to be 'sudo' ed

# Recursively delete `.DS_Store` files
alias cleanup="find ${HOME} -name '*.DS_Store' -type f -ls -delete"

# Remove broken symlinks
alias clsym="find -L . -name . -o -type d -prune -o -type l -exec rm {} +"
