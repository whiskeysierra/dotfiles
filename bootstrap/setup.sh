#!/bin/bash

directory() {
    git rev-parse --show-toplevel
}

list() {
  grep -vE '(^$)|^#' "$(directory)/bootstrap/$1.lst"
}

configure_taps() {
  list taps | while read -r tap; do
    brew tap "$tap"
  done
}

install_packages() {
  # shellcheck disable=SC2046
  brew install $(list packages)
}

install_ohmyzsh() {
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

install_dotfiles() {
  stow --dir "$(directory)" bin git gpg maven passhash ssh vim zsh p10k
}

setup_gpg() {
  chmod 0700 ~/.gnupg
  chmod -R 0600 ~/.gnupg/*
}

configure_taps
install_packages

install_ohmyzsh
install_dotfiles

setup_gpg

# TODO ssh keys
# TODO gnupg keys (https://gist.github.com/chrisroos/1205934)
