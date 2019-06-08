#!/usr/bin/env bash

# git clone
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle


# Check for the existence of the command.
has() {
    type "$1" > /dev/null 2>&1
}


# After the install, setup fzf
echo -e "\\n\\n==>Running fzf install script..."
echo "=============================="
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

