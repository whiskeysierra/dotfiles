#!/bin/sh

# BEWARE:
# Normal aliases are limited to the shell and do not work in executed shell scripts.
# If you need an alias exported, use the xalias-function.

# A special alias-like functions which allows to bind exported aliases.
# Usage xalias gradle='gradle --daemon --parallel'
#
# see: http://xpt.sourceforge.net/techdocs/nix/shell/gsh05-ShBash/ar01s23.html
xalias() {
    set -- $(echo "$@" | tr '=' ' ')
    name=$1
    shift
    command=$@
    fn="$name() { command $command \$*; }"

    if [ "$DEBUG" = 'true' ]; then
        echo ${fn}
    fi

    eval ${fn}
    export -f ${name}
}

#
alias reload="source ~/.bashrc"

alias ll='ls -lh'
alias la='ls -lha'

# treat vim as vi
alias vi='vim'

# current timestamp in reverse format
xalias stamp='date "+%Y%m%d%H%M"'

# quick process find
alias psgrep='ps -ef | grep $1'

# quick history find
alias hgrep='history | grep $1'

# interactive!
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# list top 5 big files
alias bf='find . -type f -exec ls -s {} \; | sort -n -r | head -5'

# enabled extended regex support
alias grep='grep --extended-regexp --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias rgrep='grep --recursive --exclude-dir=.svn'

# shows also alternatives and aliases, in contrast to which
alias what='type -all'

# json pretty printing
xalias json='python -mjson.tool'

# common typo :S
alias cd..='cd ..'

# good recipe for a solid maven release
xalias release='mvn clean release:clean release:prepare test release:perform'

# jenv
jenv() {
    typeset command
    command="$1"
    if [ "$#" -gt 0 ]; then
        shift
    fi

    case "$command" in
    enable-plugin|rehash|shell|shell-options)
        eval `jenv "sh-$command" "$@"`;;
    *)
        command jenv "$command" "$@";;
    esac
}

# personal top ten commands
topc() {
    history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v './' | column -c3 -s ' ' -t | sort -nr | nl |  head -n10
}

# a clever extract alias, see https://wiki.archlinux.org/index.php/Bashrc_helpers
ex () {
    if [ -f "$1" ]; then
        case $1 in
            *.tar.bz2)   tar xvjf $1;;
            *.tar.gz)    tar xvzf $1;;
            *.bz2)       bunzip2 $1;;
            *.rar)       rar x $1;;
            *.gz)        gunzip $1;;
            *.tar)       tar xvf $1;;
            *.tbz2)      tar xvjf $1;;
            *.tgz)       tar xvzf $1;;
            *.zip)       unzip $1;;
            *.Z)         uncompress $1;;
            *.7z)        7z x $1;;
            *)           echo "don't know how to extract "$1"...";;
        esac
    else
        echo '$1' is not a valid file!
    fi
}

# print the current external ip
ip() {
    curl --silent 'http://checkip.dyndns.org' | xpath -e '/html/body/text()' 2>/dev/null | awk '{print $4}'
}

alias pin='sudo pip install --requirement=requirements.txt'
alias pup='sudo pip install --upgrade --requirement=requirements.txt'

xalias gradle='gradle --daemon --parallel --no-search-upward'

alias composer='php composer.phar'
alias cup='php composer.phar update'

alias phpunit='phpunit --stderr'
alias mysql='mysql --default-character-set=utf8'

alias gpg='gpg --charset utf8'

alias up='uptime'

command -v uuid >/dev/null 2>&1
uuid=$?
command -v uuidgen >/dev/null 2>&1
uuidgen=$?
if [ ${uuid} -ne 0 -a ${uuidgen} -eq 0 ]; then
    uuid() {
        uuidgen | tr '[A-Z]' '[a-z]'
    }

    export -f uuid
fi

# environment setup shortcut, to quickly link to new scripts
alias env-setup='~/.dotfiles/manage'

###
### Projects
###

# private
alias flux='cd ~/Projects/flux'
alias dotfiles='cd ~/.dotfiles'

# work
alias 'postgres-start'='VBoxManage startvm PostgresDB\ 20130705 -type headless'
alias 'postgres-stop'='VBoxManage controlvm PostgresDB\ 20130705 acpipowerbutton'
