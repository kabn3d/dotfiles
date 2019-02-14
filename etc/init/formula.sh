#!/usr/bin/env bash

# Install Apps & Commands
brew install git
brew install tmux
brew install vim --with-override-system-vi

brew cask install iterm2
brew cask install google-chrome
brew cask install virtualbox
brew cask install vagrant
brew cask install visual-studio-code
brew install clisp

brew install tree
brew install nkf
brew install iproute2mac

# Install some CTF tools; see https://github.com/ctfs/write-ups.
# brew install aircrack-ng
# brew install bfg
# brew install binutils
# brew install binwalk
# brew install cifer
# brew install dex2jar
# brew install dns2tcp
# brew install fcrackzip
# brew install foremost
# brew install hashpump
# brew install hydra
# brew install john
# brew install knock
# brew install netpbm
# brew install nmap
# brew install pngcheck
# brew install socat
# brew install sqlmap
# brew install tcpflow
# brew install tcpreplay
# brew install tcptrace
# brew install ucspi-tcp # `tcpserver` etc.
# brew install xpdf

# Remove outdated versions from the cellar.
brew cleanup

