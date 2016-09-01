export MAVEN_OPTS="-Xms256m -Xmx2g"

if [ -d ~/Applications/maven/bin ]; then
    export M2_HOME=~/Applications/maven
    export PATH=$PATH:$M2_HOME/bin
fi

maven() {
    ln -snfv ~/.dotfiles/.m2/settings-$1.xml ~/.m2/settings.xml
    ln -snfv ~/Applications/apache-maven-$2 ~/Applications/maven
}

alias mvn-css='maven css 3.0.5'
alias mvn-oss='maven oss 3.3.9'
