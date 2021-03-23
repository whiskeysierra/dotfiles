#!/bin/bash

confirm() {
  echo -n "$1 [y/N]? " <&3
  read -r choice
  case $choice in
    y|Y) true;;
    *) false;;
  esac
}

list() {
  grep -vE '(^$)|^#' "$1.lst"
}

install_brew() {
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

configure_taps() {
  list taps | while read -r tap; do
    if confirm "Configure $tap"; then
      brew tap "$tap"
    fi
  done
}

install_packages() {
  list taps | while read -r package; do
    if confirm "Install $package"; then
      brew install "$package"
    fi
  done
}

install_ohmyzsh() {
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

install_dotfiles() {
  stow bin git gpg maven passhash ssh vim zsh p10k
}

exec 3<&0 # preserve standard input

confirm "Install brew" && install_brew

configure_taps
install_packages

confirm "Install oh-my-zsh" && install_ohmyzsh
confirm "Stow dotfiles" && install_dotfiles

# TODO ssh keys
# TODO gnupg keys (https://gist.github.com/chrisroos/1205934)