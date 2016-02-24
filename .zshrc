# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="whiskeysierra"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=~/.dotfiles/

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(aws docker extract git git-flow maven postgres mai senza)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# allow user scripts in ~/bin
if [ -d ~/bin ]; then
    export PATH=~/bin:$PATH
fi

# Maven
if [ -d ~/Applications/maven/bin ]; then
    export M2_HOME=~/Applications/maven
    export PATH=$M2_HOME/bin:$PATH
    export MAVEN_OPTS="-Xms256m -Xmx2g"
fi

# keychain
keychain --quiet ~/.ssh/id_personal ~/.ssh/id_work
source ~/.keychain/$(hostname)-sh

# Database 
export DATABASE_USER="-U wschoenborn"
if [ -d ~/.zalando-db ]; then
    export PATH=~/.zalando-db:$PATH
fi

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vi'
export VISUAL='vi'

# History
HISTSIZE=100000
SAVEHIST=300000

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export DEFAULT_USER=$(whoami)

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias dotfiles='cd ~/.dotfiles'
alias reload="source ~/.zshrc"
alias setup='~/.dotfiles/setup'

alias stamp='date "+%Y%m%d%H%M"'

alias psgrep='ps -ef | grep $1'
alias hgrep='history | grep $1'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias json='python -mjson.tool'
alias xml='xmlstarlet fo'

alias pin='sudo pip install -r requirements.txt'
alias pup='sudo pip install --upgrade -r requirements.txt'

alias deployctl='ssh -A deployctl@deploy.zalando'
alias postgres-start='(cd ~/.zalando-db-box && vagrant up)'
alias postgres-stop='(cd ~/.zalando-db-box && vagrant halt)'
alias postgres-restore='(cd ~/.zalando-db-box && vagrant snapshot go clean)'
alias postgres-reinstall='(cd ~/.zalando-db-box && vagrant destroy -f && git pull && postgres-start && vagrant snapshot take clean)'
alias tomcat='mvn clean test-compile tomcat7:run-war -D skipTests=true'