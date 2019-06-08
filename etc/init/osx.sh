#!/usr/bin/env bash

if [ "$(uname)" != "Darwin" ] ; then
  echo 'ERROR: Not macOS!'
  exit 1
fi

echo -e "\\n\\n==>Setting MacOS"
echo "=============================="


# Finder.app
defaults write com.apple.finder AppleShowAllFiles YES
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
defaults write com.apple.Finder QuitMenuItem -bool true


# Trackpad

# Enable tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1


# Terminal.app

# Use a custom theme
# Use a modified version of the Solarized Dark theme by default in Terminal.app
TERM_PROFILE='Solarized_Dark';
TERM_PATH='./';
CURRENT_PROFILE="$(defaults read com.apple.terminal 'Default Window Settings')";
if [ "${CURRENT_PROFILE}" != "${TERM_PROFILE}" ]; then
    open "$TERM_PATH$TERM_PROFILE.terminal"
    defaults write com.apple.Terminal "Default Window Settings" -string "$TERM_PROFILE"
    defaults write com.apple.Terminal "Startup Window Settings" -string "$TERM_PROFILE"
fi
defaults import com.apple.Terminal "$HOME/Library/Preferences/com.apple.Terminal.plist"


# restart to enable configs
killall Finder
killall Dock

echo "Finished"

