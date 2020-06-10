#!/bin/sh

install_brew() {
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
}

configure_brew() {
  ./configure-taps.sh
}

install_packages() {
  ./install-packages.sh
}

install_ohmyzsh() {
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

install_dotfiles() {
  stow git gpg maven passhash ssh vim zsh
}

install_casks() {
  ./install-casks.sh
}

install_brew
configure_brew
install_packages
install_ohmyzsh
install_dotfiles
install_casks

# TODO ssh keys
# TODO gnupg keys (https://gist.github.com/chrisroos/1205934)