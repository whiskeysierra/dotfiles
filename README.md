# dotfiles

![Slashdot icon](https://raw.github.com/whiskeysierra/dotfiles/master/icon.png)

[![Build Status](https://travis-ci.org/whiskeysierra/dotfiles.png?branch=master)](http://travis-ci.org/whiskeysierra/dotfiles)

A collection of dotfiles, i.e. shell commands, plugins, themes and configuration files.

## Requirements

- Unix-based operating system (Mac OS X or Linux)
- [Zsh](http://www.zsh.org/)
- [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
- Python 2.6 or higher
 
## Installation

Fork or just clone the repository

    git clone https://github.com/whiskeysierra/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    
Install the python dependencies

    sudo pip install -r requirements.txt

Create a custom configuration similar to 
[config/default.yml](https://github.com/whiskeysierra/dotfiles/blob/master/config/default.yml)

    vi `config/<hostname>.yml`

Run the setup to create all symlinks (this will create backups be default if necessary)
    
    python setup

## Amazon Web Services

The custom oh-my-zsh theme is a fork of
[agnoster](https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/agnoster.zsh-theme) and it basically just adds
two segments, one for the AWS account and one for the region.

![Screenshot of custom theme](theme.png)

There are a couple of convenience commands for everyday work with multiple AWS accounts and regions. 

| Alias                | Description                                      |
|----------------------|--------------------------------------------------|
| `test`               | Login to AWS *test* account                      |
| `prod`               | Login to AWS *production* account                |
| `west`               | Connect to *eu-west-1* region                    |
| `central`            | Connect to *eu-central-1* region                 |
| `relog`              | Re-login to the current AWS account              |
| `account`            | Display the current account                      |
| `region`             | Display the current region                       |

The current account is defined by `~/.config/mai/last_update.yaml` and the current region by `AWS_DEFAULT_REGION`, the
same environment variable that the AWS CLI supports as well.

All of this is 100% integrated with [Mai](https://github.com/zalando-stups/mai),
[Più](https://github.com/zalando-stups/piu) and [Senza](https://github.com/zalando-stups/senza):
There will be an aliases created for every profile defined in `~/.config/mai/mai.yaml`, i.e. `test` and `prod` were
just examples. Every alias is just a simple call to `mai login <profile>`. Più and Senza will have their
region-specific parameters set by default, i.e. you never need to specify the `--odd-host` for `piu` or the
`--region` for `senza`.

## Attributions
![Creative Commons License](http://i.creativecommons.org/l/by-sa/3.0/80x15.png)
Slashdot Icon by [SimekOneLove](http://www.iconarchive.com/show/modern-web-icons-by-simekonelove/slashdot-icon.html)
is licensed under a [Creative Commons (Attribution-Share Alike 3.0 Unported)](http://creativecommons.org/licenses/by-sa/3.0/).

