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
    aws \
    each \
    extract \
    git-extras \
    gitfast \
    history \
    httpie \
    home-bin \
    jenv \
    maven \
    mvn \
    stups \
    ubunutu
)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

export DEFAULT_USER=$(whoami)

# Database
export DATABASE_USER="-U wschoenborn"
if [ -d ~/.zalando-db ]; then
    export PATH=~/.zalando-db:$PATH
fi

# Stups
export PIU_USER=wschoenborn

# Python requests SSL verification
export REQUESTS_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt

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

project=(\
    archer \
    compass \
    compass-client \
    faux-pas \
    http-toolbox \
    jackson-datatype-money \
    jackson-module-unknown-property \
    logbook \
    problem \
    problem-spring-web \
    riptide \
    switchboard \
    tracer 
)

personal=(\
    archer \
    compass \
    compass-client \
    http-toolbox \
    jackson-module-unknown-property \
    switchboard
)

zalando=(\
    faux-pas \
    jackson-datatype-money \
    logbook \
    problem \
    problem-spring-web \
    riptide \
    tracer 
)

customs=(\
    customs-export-service \
    customs-import-service \
    customs-price-service \
    customs-product-service \
    customs-tour-completion-service \
    customs-tour-service
)

microservice=(\
    business-partner-service \
    customs-export-service \
    customs-import-service \
    customs-price-service \
    customs-product-service \
    customs-tour-completion-service \
    customs-tour-service \
    customs-weight-service \
    exchange-rate-relay \
    exchange-rate-service \
)

cve=(\
    jackson-datatype-money \
    logbook \
    riptide \
    problem-spring-web \
    problem \
)

PATH=$PATH:~/Projects/aws-all-access

alias .f='cd ~/.dotfiles'
alias setup='~/.dotfiles/setup'

alias stamp='date "+%Y%m%d%H%M"'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias dl='cd ~/Downloads'
alias p='cd ~/Projects'

alias deployctl='ssh -A deployctl@deploy.zalando'
alias tomcat='mvn clean test-compile tomcat7:run-war -D skipTests'

alias https='http --auth-type=zign -a token: --default-scheme=https'

# OSS projects
alias az='cd ~/Projects/azure'
alias fp='cd ~/Projects/faux-pas'
alias hv='cd ~/Projects/hibernate-validator'
alias jdm='cd ~/Projects/jackson-datatype-money'
alias lb='cd ~/Projects/logbook'
alias lm='cd ~/Projects/landmark'
alias pb='cd ~/Projects/problem'
alias pitr='cd ~/Projects/put-it-to-rest'
alias psw='cd ~/Projects/problem-spring-web'
alias rt='cd ~/Projects/riptide'
alias sb='cd ~/Projects/switchboard'
alias tc='cd ~/Projects/tracer'

# Work projects
alias bps='cd ~/Projects/business-partner-service'
alias ces='cd ~/Projects/customs-export-service'
alias cis='cd ~/Projects/customs-import-service'
alias cps='cd ~/Projects/customs-product-service'
alias crs='cd ~/Projects/customs-price-service'
alias ctcs='cd ~/Projects/customs-tour-completion-service'
alias cts='cd ~/Projects/customs-tour-service'
alias cws='cd ~/Projects/customs-weight-service'
alias err='cd ~/Projects/exchange-rate-relay'
alias ers='cd ~/Projects/exchange-rate-service'
alias ff='cd ~/Projects/zeos-finance'
alias fos='cd ~/Projects/fulfillment-order-service'
alias inf='cd ~/Projects/infrastructure'
alias logs='ssh logaccess.zalando'
alias oe='cd ~/Projects/zeos-orderengine'
alias os='cd ~/Projects/zeos-order'
alias qs='cd ~/Projects/quote-service'
alias rop='cd ~/Projects/rules-of-play'
alias sm='cd ~/Projects/shipping-mail-service'

