#!/bin/bash

# macOS Settings

###
### Dock
###

# Remove every icon from dock
defaults write com.apple.Dock persistent-apps -array ''

# Change the Dock minimize animation to scale
defaults write com.apple.dock "mineffect" -string "scale"

# Set Dock size
defaults write com.apple.dock "tilesize" -int 30

# Set Dock magnification behavior
defaults write com.apple.dock "magnification" -bool true
defaults write com.apple.dock "largesize" -int 60

# Minimize to application
defaults write com.apple.dock "minimize-to-application" -bool true

killall Dock

###
### Finder
###

# Show all file extensions
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"

# Set default search scope to this folder
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"

# Disable file extension warning
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false"

# Don't show external drives on Desktop
defaults write com.apple.finder "ShowExternalHardDrivesOnDesktop" -bool "false"

# Don't show removable media on Desktop
defaults write com.apple.finder "ShowRemovableMediaOnDesktop" -bool "false"

# Open new windows in home folder
defaults write com.apple.Finder NewWindowTarget -string "PfHm"

# Set the default view style for folders without custom setting to list view
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv"

killall Finder

###
### MenuBar
###

# Flash second seperator
defaults write com.apple.menuextra.clock "FlashDateSeparators" -bool "true"

killall SystemUIServer

###
### Mouse
###

# Increase Mouse Sensibility
defaults write NSGlobalDomain com.apple.mouse.scaling -float "10"

###
### Misc
###

# Turn off the “Application Downloaded from Internet” quarantine warning.
defaults write com.apple.LaunchServices "LSQuarantine" -bool "false"

# Disable scale to page on print dialog
defaults write com.apple.Preview PVImagePrintingScaleMode -bool "false"

###
### Game Controller
###

# Disable Home and Share buttons from doing anything in macOS
defaults write com.apple.GameController bluetoothPrefsMenuLongPressAction -integer 0
defaults write com.apple.GameController bluetoothPrefsShareLongPressSystemGestureMode -integer -1