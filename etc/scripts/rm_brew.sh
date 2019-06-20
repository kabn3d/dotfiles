#!/bin/bash

#case darwin / deb

cd `brew --prefix`
rm -rf Cellar
brew cleanup
rm `git ls-files`
rmdir Library/Homebrew Library/Aliases Library/Formula Library/Contributions
rm -rf .git
rm -rf ~/Library/Caches/Homebrew

