# dotfiles

![Slashdot icon](docs/icon.png)

[![Stability: Active](https://masterminds.github.io/stability/active.svg)](https://masterminds.github.io/stability/active.html)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/whiskeysierra/dotfiles/master/LICENSE)

A collection of dotfiles, i.e. shell commands, plugins, themes and configuration files.

## Requirements

- MacOS
- [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
- stow
 
## Installation

Fork or just clone the repository

    git clone https://github.com/whiskeysierra/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    
**Important**: The directory has to be placed exactly within the home directory. Otherwise `stow` won't work.

Now you can link individual parts of the dotfiles into your home directory:

    stow git gpg maven passhash ssh vim zsh

As an additional, yet optional, step you can choose to install my favorite tools and apps.
Including but not limited to brew, zsh, oh-my-zsh, etc.

    cd bootstrap
    ./bootstrap.sh

## Attributions
![Creative Commons License](http://i.creativecommons.org/l/by-sa/3.0/80x15.png)
Slashdot Icon by [SimekOneLove](http://www.iconarchive.com/show/modern-web-icons-by-simekonelove/slashdot-icon.html)
is licensed under a [Creative Commons (Attribution-Share Alike 3.0 Unported)](http://creativecommons.org/licenses/by-sa/3.0/).

