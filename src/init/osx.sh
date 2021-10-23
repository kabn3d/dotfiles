#!/bin/bash

if [ "$(uname)" != "Darwin" ]; then
	echo "ERROR:!" >&2
	exit 1
fi

printf "Setting osx...\n"
# Finder.app
defaults write com.apple.finder AppleShowAllFiles YES
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
defaults write com.apple.Finder QuitMenuItem -bool true
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.finder WarnOnEmptyTrash -bool false
defaults write com.apple.finder PathBarRootAtHome -bool yes
defaults write com.apple.finder DisableAllAnimations -bool true
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}" #fix
defaults write com.apple.finder FinderSounds -bool no

defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.CrashReporter DialogType none
defaults write -g NSScrollViewRubberbanding -bool no
chflags nohidden ~/Library

# Dock
defaults write com.apple.dock no-bouncing -bool true
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock tilesize -int 25

# Keyboard
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 15

# Mouse
defaults write -g com.apple.mouse.scaling 1.5

# Trackpad
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Safari.app
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari ShowFavoritesBar -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true

# Misc
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true
defaults write com.apple.menuextra.clock 'DateFormat' -string 'EEE d MMM HH:mm'
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
defaults write com.apple.screencapture type -string "png"
sudo defaults write /Library/Preferences/com.apple.Bluetooth ControllerPowerState -int 0

# Terminal.app
defaults write com.apple.Terminal ShowLineMarks -int 0
defaults write com.apple.terminal StringEncodings -array 4

printf "Install color scheme.\n"
git clone https://github.com/tomislav/osx-terminal.app-colors-solarized.git ~/Downloads/scheme

# Use a modified version of the Solarized Dark theme by default in Terminal.app
printf "Change default profiles.\n"
TERM_PROFILE="Solarized Dark"
TERM_PATH=~/Downloads/scheme
CURRENT_PROFILE="$(defaults read com.apple.terminal 'Default Window Settings' \
	| awk -F\\ '{print $1}')"
if [ "${CURRENT_PROFILE}" != "${TERM_PROFILE}" ]; then
	open "${TERM_PATH}"/"${TERM_PROFILE}".terminal
	defaults write com.apple.Terminal "Default Window Settings" -string "${TERM_PROFILE}"
	defaults write com.apple.Terminal "Startup Window Settings" -string "${TERM_PROFILE}"
fi
rm -rf ~/Downloads/scheme/

# fix
# defaults import com.apple.Terminal "~/Library/Preferences/com.apple.Terminal.plist"

# Restart to enable configs.
killall Dock
killall Finder
killall SystemUIServer

printf "Complete!\n"