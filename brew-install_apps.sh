#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
NC='\033[0m'

BREW_APPS=(
  caskroom/cask/brew-cask
  chruby
  ffmpeg
  git
  mysql
  nvm
  postgresql
  reattach-to-user-namespace
  ruby-install
  tmux
  vim
  wget
)

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
  xquartz
)

function install_brew_apps {
  printf "${GREEN}Installing Homebrew Apps${NC}\n"
  for app in "${BREW_APPS[@]}"; do
    brew install $app
  done
}
function install_brew_cask_apps {
  printf "${GREEN}Installing Homebrew Cask Apps${NC}\n"
  for app in "${BREW_CASK_APPS[@]}"; do
    brew cask install $app
  done
}

function install_homebrew {
  printf "${ORANGE}Installing Homebrew${NC}\n"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  install_brew_apps
  install_brew_cask_apps
}

function install_homebrew_cask {
  printf "${ORANGE}Installing Homebrew Cask${NC}\n"
  brew install caskroom/cask/brew-cask
  install_brew_cask_apps
}

if type brew2 >/dev/null 2>&1; then
  install_brew_apps
  if type brew cask >/dev/null 2>&1; then
    install_brew_cask_apps
  else
    printf "${RED}Homebrew cask is not installed. Please run 'brew install brew-cask' to install.${NC}\n"
    install_homebrew_cask
  fi
else
  printf "${RED}Homebrew is not installed${NC}\n"
  install_homebrew
fi
