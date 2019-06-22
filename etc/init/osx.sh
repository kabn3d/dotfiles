#!/bin/bash

if [ "$(uname)" != "Darwin" ]; then
  echo "ERROR: Not macOS!" >&2
  exit 1
fi

echo "==> Setting MacOS."
echo "=============================="


# Finder.app
defaults write com.apple.finder AppleShowAllFiles YES
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
defaults write com.apple.Finder QuitMenuItem -bool true
defaults write com.apple.finder WarnOnEmptyTrash -bool false
defaults write com.apple.finder PathBarRootAtHome -bool yes
defaults write com.apple.finder DisableAllAnimations -bool true
defaults write com.apple.finder WarnOnEmptyTrash -bool false
defaults write com.apple.finder FinderSounds -bool no
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.CrashReporter DialogType none
defaults write com.apple.dock no-bouncing -bool true
defaults write -g NSScrollViewRubberbanding -bool no
chflags nohidden ~/Library


# Trackpad
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1


# Safari
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari ShowFavoritesBar -bool false


# Misc
defaults write com.apple.menuextra.clock 'DateFormat' -string 'EEE H:mm'
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true
defaults write com.apple.screencapture type -string "png"


# Terminal.app
defaults write com.apple.Terminal ShowLineMarks -int 0
defaults write com.apple.terminal StringEncodings -array 4

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


# Restart to enable configs.
killall Finder
killall Dock

