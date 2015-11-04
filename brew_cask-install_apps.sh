#!/bin/bash

BREW_CASK_APPS=(
  appcleaner
  disk-inventory-x
  dropbox
  firefox
  font-inconsolata
  font-source-code-pro
  garmin-express
  gimp
  google-chrome
  inkscape
  iterm2
  lastpass
  limechat
  mou
  opera
  pgadmin3
  spotify
  transmission
  vagrant
  vlc
  xquarts
)

function install_apps {
  for app in "${BREW_CASK_APPS[@]}"; do
    brew cask install $app
  done
}

# checks if Homebrew is installed
if type brew >/dev/null 2>&1; then
  if type brew cask >/dev/null 2>&1; then
    install_apps
  else
    echo 'Homebrew cask is not installed. Please run `brew install brew-cask` to install.'
  fi
else
  echo 'Homebrew is not installed.'
fi
