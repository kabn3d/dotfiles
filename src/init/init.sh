#!/bin/bash

# After the install, setup fzf
printf "==> \nRunning fzf install script...\n"
/usr/local/opt/fzf/install --all --no-bash --no-fish

# Change the default shell to zsh
zsh_path="$( command -v zsh )"
if ! grep "${zsh_path}" /etc/shells; then
  printf "Adding ${zsh_path} to /etc/shells"
  printf "${zsh_path}" | sudo tee -a /etc/shells
fi

if [[ "${SHELL}" != "${zsh_path}" ]]; then
  chsh -s "${zsh_path}"
  printf "default shell changed to %s" "${zsh_path}"
fi

printf "Complete!\n"