# ![Slashdot icon](https://raw.github.com/whiskeysierra/dotfiles/master/icon.png) dotfiles Management [![Build Status](https://travis-ci.org/whiskeysierra/dotfiles.png?branch=master)](http://travis-ci.org/whiskeysierra/dotfiles)

Dotfile and environment management for unix-based systems.

## Requirements

- Python 2.6 or 2.7
 
To install the required python libraries run:
    
    sudo pip install -r requirements.txt

## Quickstart
Fork or just clone the repository

    git clone https://github.com/whiskeysierra/dotfiles.git ~/.dotfiles
    
Run the setup

    ~/.dotfiles/manage
    
Which symlinks everything that's configured in [config/default.yml](https://github.com/whiskeysierra/dotfiles/blob/master/config/default.yml).
The way I managed it is, the defaults are inf `config/default.yml` while the system specifics go into `config/<hostname>.yml`.




## Attributions
![Creative Commons License](http://i.creativecommons.org/l/by-sa/3.0/80x15.png)
Slashdot Icon by [SimekOneLove](http://www.iconarchive.com/show/modern-web-icons-by-simekonelove/slashdot-icon.html) is licensed under a
[Creative Commons (Attribution-Share Alike 3.0 Unported)](http://creativecommons.org/licenses/by-sa/3.0/).

