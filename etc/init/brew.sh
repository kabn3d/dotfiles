#!/usr/bin/env bash

# Install command-line tools using Homebrew.
if test ! "$( command -v brew )"; then
    echo -e "\\n\\n==>Installing homebrew"
    echo "=============================="
    /usr/bin/ruby -e "$( curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install )"
fi

# error: brew doctor

formulae={
    tmux
    reattach-to-user-namespace # for copy in tmux
    fzf
    tree
    python3
    zplug
}

casks={
    google-chrome
    # virtualbox
    vagrant
    visual-studio-code
    dropbox
}

echo -e "\\n\\n==>Installing homebrew packages..."
echo "=============================="

for formula in "${formulae[@]}"; do
    brew install $formula
done

for cask in "${casks[@]}"; do
    brew cask install $cask
done

