#!/bin/bash

# Show "Library" Folder
chflags nohidden ~/Library

# Enabled Key Repeat
defaults write -g ApplePressAndHoldEnabled -bool false

# Up KeyRepeat Rate
defaults write NSGlobalDomain KeyRepeat -int 0.5

# Up InitialKeyRepeat Rate
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Always Require Password
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Set Screenshot Save Location
mkdir "$HOME/Desktop/Screen Shots"
defaults write com.apple.screencapture location -string "$HOME/Desktop/Screenshots"

# Secure Empty Trash
defaults write com.apple.finder EmptyTrashSecurely -bool true

# Enable Tabbing
defaults write NSGlobalDomain AppleKeyboardUIMode -int 2

# Auto-Hide Dock
defaults write com.apple.dock autohide -bool true

# Dock Size
defaults write com.apple.dock tilesize -int 16

# Dock Magnification
defaults write com.apple.dock magnification -bool true

# Dock Magnification Size
defaults write com.apple.dock largesize -int 128

# Auto-Hide Menu Bar
defaults write NSGlobalDomain _HIHideMenuBar -bool true

# Set Theme to Dark
defaults write NSGlobalDomain AppleInterfaceStyle -string Dark

# Always Show Scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string Always

# Disable File Extension Change Warning
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Disable .DS_Store Creation For Network Drives
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Show HDs/Servers/Removeable Media On Desktop
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true

# Show Finder Status Bar
defaults write com.apple.finder ShowStatusBar -bool true

# Show Finder Path Bar
defaults write com.apple.finder ShowPathbar -bool true

# Show Filename Extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show Hidden Files
defaults write com.apple.finder AppleShowAllFiles -bool true
