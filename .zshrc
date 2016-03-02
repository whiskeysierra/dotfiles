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
plugins=(\
    extract \
    git-extras \
    gitfast \
    history \
    httpie \
    home-bin \
    keychain \
    mvn \
    pip-alias \
    postgres-box \
    stups \
    ubunutu
)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

export DEFAULT_USER=$(whoami)

# Maven
export MAVEN_OPTS="-Xms256m -Xmx2g"

if [ -d ~/Applications/maven/bin ]; then
    export M2_HOME=~/Applications/maven
    export PATH=$M2_HOME/bin:$PATH
fi

# Database 
export DATABASE_USER="-U wschoenborn"
if [ -d ~/.zalando-db ]; then
    export PATH=~/.zalando-db:$PATH
fi

export POSTGRES_BOX_PATH=~/.zalando-db-box

# Stups
export PIU_USER=wschoenborn

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

# SSH
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias .f='cd ~/.dotfiles'
alias setup='~/.dotfiles/setup'

alias stamp='date "+%Y%m%d%H%M"'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias dl='cd ~/Downloads'
alias p='cd ~/Projects'

alias deployctl='ssh -A deployctl@deploy.zalando'
alias tomcat='mvn clean test-compile tomcat7:run-war -D skipTests=true'

# OSS projects
alias az='cd ~/Projects/azure'
alias lb='cd ~/Projects/logbook'
alias rt='cd ~/Projects/riptide'
alias tc='cd ~/Projects/tracer'

# Work projects
alias bps='cd ~/Projects/business-partner-service'
alias ff='cd ~/Projects/zeos-finance'
alias foc='cd ~/Projects/fulfillment-order-cockpit'
alias fos='cd ~/Projects/fulfillment-order-service'
alias iq='cd ~/Projects/interview-questions'
alias lps='cd ~/Projects/loyalty-point-service'
alias oe='cd ~/Projects/zeos-orderengine'
alias os='cd ~/Projects/zeos-order'
alias qs='cd ~/Projects/quote-service'
alias rop='cd ~/Projects/rules-of-play'
alias sit='cd ~/Projects/system-integration-tests'
alias sos='cd ~/Projects/zeos-order'
