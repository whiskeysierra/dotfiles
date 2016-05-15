export MAVEN_OPTS="-Xms256m -Xmx2g"

if [ -d ~/Applications/maven/bin ]; then
    export M2_HOME=~/Applications/maven
    export PATH=$PATH:$M2_HOME/bin
fi

export M2_SETTINGS=~/.m2/settings.xml

alias mvn-css='export M2_SETTINGS=~/.dotfiles/.m2/settings-css.xml'
alias mvn-oss='export M2_SETTINGS=~/.dotfiles/.m2/settings-oss.xml'

alias mvn='mvn --settings $M2_SETTINGS'