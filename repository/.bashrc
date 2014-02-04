#!/bin/sh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# allow user scripts in ~/bin
if [ -d ~/bin ]; then
    export PATH=~/bin:$PATH
fi

# homebrew
if [ -d /usr/local/bin ]; then
    export PATH=/usr/local/bin:$PATH
fi

# nodejs
if [ -e /usr/local/lib/node ]; then
    export NODE_PATH=/usr/local/lib/node
fi

# npm
if [ -d /usr/local/share/npm/bin ]; then
    export PATH=/usr/local/share/npm/bin:$PATH
fi

# python
if [ -d /opt/python/bin ]; then
    export PATH=/opt/python/bin:$PATH
fi

# latex
if [ -d /opt/latex/bin ]; then
    export PATH=/opt/latex/bin:$PATH
fi

# maven
if [ -d /opt/maven/bin ]; then
    export PATH=/opt/maven/bin:$PATH
fi

# ant
if [ -d /opt/ant/bin ]; then
    export PATH=/opt/ant/bin:$PATH
fi

# gradle
if [ -d /opt/gradle/bin ]; then
    export PATH=/opt/gradle/bin:$PATH
fi

# jalopy
if  [ -d /opt/jalopy/bin ]; then
    export PATH=/opt/jalopy/bin:$PATH
fi

# codevalidator
if [ -d /opt/codevalidator ]; then
    export PATH=/opt/codevalidator:$PATH
fi

# hadoop
if [ -d /opt/hadoop/bin ]; then
    export PATH=/opt/hadoop/bin:$PATH
fi

# hive
if [ -d /opt/hive/bin ]; then
    export PATH=/opt/hive/bin:$PATH
fi

# java
if [ -d ~/.jenv ]; then
    export PATH=~/.jenv/bin:~/.jenv/shims:$PATH
    jenv rehash 2>/dev/null
elif [ -d /opt/java ]; then
    export JAVA_HOME=/opt/java
    export PATH=${JAVA_HOME}/bin:$PATH
fi

# bash completion
if [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi

# bash completion shipped with homebrew
if [ -f /usr/local/etc/bash_completion ]; then
    source /usr/local/etc/bash_completion
fi

# homebrew's own bash completion
command -v brew >/dev/null 2>&1
if [ $? -eq 0 ]; then
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        source $(brew --prefix)/etc/bash_completion
    fi
fi

# git dispatcher bash completion
if [ -f ~/.git-dispatcher/git-dispatcher-completion.bash ]; then
    source ~/.git-dispatcher/git-dispatcher-completion.bash
fi

# git flow bash completion
if [ -f ~/.git-flow-completion/git-flow-completion.bash ]; then
    source ~/.git-flow-completion/git-flow-completion.bash
fi

# git ignore bash completion
if [ -f ~/.git-ignore/git-ignore-completion.bash ]; then
    source ~/.git-ignore/git-ignore-completion.bash
fi

# jenv bash completion
if [ -f ~/.jenv/completions/jenv.bash ]; then
    source ~/.jenv/completions/jenv.bash
fi

# maven bash completion
if [ -f ~/.mvn-completion.bash ]; then
    source ~/.mvn-completion.bash
fi

# make less more friendly for non-text input files, see lesspipe(1)
if [ -x /usr/local/bin/lesspipe.sh ]; then
    eval "$(lesspipe.sh)"
fi

###
### Prompt
###

# git prompt
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true

if [ -f ~/.gitprompt ]; then
    source ~/.gitprompt
fi

# colored prompt with git support
export PROMPT_COMMAND='__git_ps1 "\[\033[01;30m\]\t \[\e[0;36m\]\u\[\e[m\]@\[\033[00;32m\]\h\[\033[00;37m\]:\[\e[m\]" "\[\033[0;34m\]\w\[\e[m\] $ "'

# colored ls output
export CLICOLOR=1
#export LS_COLORS='no=00:fi=00:di=00;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:';

###
### History
###

# save up to 30k commands in ~/.bash_history...
export HISTFILESIZE=300000
# and up to 10k in memory
export HISTSIZE=100000

# set vi as default editor
export EDITOR=vi
export VISUAL=vi

# 2x Ctrl-D to close terminal
export IGNOREEOF=1

###
### Keychain
###

keychain --quiet ~/.ssh/id_personal ~/.ssh/id_work
source ~/.keychain/$HOSTNAME-sh

###
### Aliases
###

# load external aliases
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# load special bashrc additions
if [ -f ~/.bash_include ]; then
    source ~/.bash_include
fi

