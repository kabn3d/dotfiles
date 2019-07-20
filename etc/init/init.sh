#!/bin/bash


# Check for the existence of the command.
has() {
  type "$1" > /dev/null 2>&1
}


# After the install, setup fzf
printf"==> \nRunning fzf install script...\n"
/usr/local/opt/fzf/install --all --no-bash --no-fish

# Change the default shell to zsh
zsh_path="$( command -v zsh )"
if ! grep "$zsh_path" /etc/shells; then
  echo "adding $zsh_path to /etc/shells"
  echo "$zsh_path" | sudo tee -a /etc/shells
fi

if [[ "$SHELL" != "$zsh_path" ]]; then
  chsh -s "$zsh_path"
  echo "default shell changed to $zsh_path"
fi

printf "\nComplete!\n"
