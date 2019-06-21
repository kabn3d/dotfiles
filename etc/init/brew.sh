#!//bin/bash

# error handling

# Install command-line tools using Homebrew.
if test ! "$( command -v brew )"; then
  printf "\n\n==> Installing homebrew.\n"
  echo "=============================="
  /usr/bin/ruby -e "$( curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install )"
fi

# error: brew doctor
if test ! "$( brew doctor )"; then
  echo "ERROR:" >&2
  exit 1
fi

formulae=(
  git
  vim
  tmux
  reattach-to-user-namespace # for copy in tmux
  # fzf
  tree
  python3
  clisp
  # zplug
)

casks=(
  google-chrome
  # virtualbox
  vagrant
  visual-studio-code
  # dropbox
)

printf "\n\n==> Installing homebrew packages...\n"
echo "=============================="

for formula in "${formulae[@]}"; do
  pkg_name=$( echo "${formula}" | awk '{print $1}' )
  if brew list "${pkg_name}" > /dev/null 2>&1; then
    echo "${pkg_name} already installed... skipping."
  else
    brew install "${formula}"
  fi
done

for cask in "${casks[@]}"; do
  pkg_name=$( echo "$cask" | awk '{print $1}' )
  if brew cask list "${pkg_name}" > /dev/null 2>&1; then
    echo "${pkg_name} already installed... skipping."
  else
    brew cask install "${cask}"
  fi
done

