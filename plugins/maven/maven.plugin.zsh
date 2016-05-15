export MAVEN_OPTS="-Xms256m -Xmx2g"

if [ -d ~/Applications/maven/bin ]; then
    export M2_HOME=~/Applications/maven
    export PATH=$PATH:$M2_HOME/bin
fi

alias mvn-css='ln -sfv ~/.dotfiles/.m2/settings-css.xml ~/.m2/settings.xml'
alias mvn-oss='ln -sfv ~/.dotfiles/.m2/settings-oss.xml ~/.m2/settings.xml'