source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="powerlevel10k/powerlevel10k"

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
    common-aliases \
    each \
    extract \
    git-flow-avh \
    gpg-agent \
    history \
    httpie \
    jenv \
    kubectl \
    mvn \
    profiles \
    sudo \
    terraform
)

# User configuration

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$HOME/Library/Python/3.9/bin:$HOME/bin

source $ZSH/oh-my-zsh.sh

autoload -U +X bashcompinit && bashcompinit

if [ -e /usr/local/etc/bash_completion.d/az ]; then
    source /usr/local/etc/bash_completion.d/az
fi

if [ -d ~/go ]; then
    export GOPATH=$HOME/go
    export GOROOT="$(brew --prefix golang)/libexec"
    export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
fi

if [ -d /usr/local/opt/ruby ]; then
    export PATH="/usr/local/opt/ruby/bin:$PATH"
fi

if [ -d $HOME/.gem/ruby/2.7.0 ]; then
    export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"
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

# SSH
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

project=(\
    faux-pas \
    http-toolbox \
    jackson-datatype-money \
    logbook \
    opentracing-toolbox \
    problem \
    problem-spring-web \
    riptide \
    switchboard
)

personal=(\
    compass \
    compass-client \
    http-toolbox \
    switchboard
)

arch=(\
    base-image \
    composite-telemetry \
    composite-testing \
    consul-ingress \
    consul-server \
    decision-records \
    deployment-agents \
    id \
    lets-encrypt \
    pipelines \
    tiles
)

alias .f='cd ~/.dotfiles'
alias dl='cd ~/Downloads'
alias p='cd ~/Projects'

alias main='git checkout main'
alias trunk='git checkout trunk'

alias skip='echo "-D duplicate-finder.skip -D dependency-check.skip -D skipTests"'

# OSS projects
alias fp='cd ~/Projects/faux-pas'
alias jdm='cd ~/Projects/jackson-datatype-money'
alias lb='cd ~/Projects/logbook'
alias pb='cd ~/Projects/problem'
alias psw='cd ~/Projects/problem-spring-web'
alias rt='cd ~/Projects/riptide'
alias sb='cd ~/Projects/switchboard'
alias tc='cd ~/Projects/tracer'

# Work projects
alias a='cd ~/Projects/architecture'
alias as='cd ~/Projects/attestation-service'
alias c='cd ~/Projects/gropyos/package/gropyos-controller'
alias g='cd ~/Projects/gropyos'
alias i='cd ~/Projects/infrastructure'
alias mes='cd ~/Projects/mes'
alias pipe='cd ~/Projects/pipelines'
alias st='cd ~/Projects/service-templates'
alias us='cd ~/Projects/update-service'

alias dla='youtube-dl --verbose --extract-audio --format best --no-cache-dir --output "%(title)s.%(ext)s"'
alias dlv='youtube-dl --verbose --format best --no-cache-dir --output "%(title)s.%(ext)s"'

alias rearrange-displays1='displayplacer "id:4E7A3C33-3042-E730-215F-F57C677FCE1B res:2560x1440 hz:59 color_depth:8 scaling:off origin:(0,0) degree:0" "id:CE62D897-B052-E9AB-8182-C794F1AD4729 res:1792x1120 hz:59 color_depth:8 scaling:on origin:(-2560,320) degree:0" "id:D6F36547-895B-A709-1CB1-B3048CBF52CB res:2560x1440 hz:59 color_depth:8 scaling:off origin:(2560,0) degree:0"'
alias rearrange-displays2='displayplacer "id:D6F36547-895B-A709-1CB1-B3048CBF52CB res:2560x1440 hz:59 color_depth:8 scaling:off origin:(0,0) degree:0" "id:CE62D897-B052-E9AB-8182-C794F1AD4729 res:1792x1120 hz:59 color_depth:8 scaling:on origin:(-2560,320) degree:0" "id:4E7A3C33-3042-E730-215F-F57C677FCE1B res:2560x1440 hz:59 color_depth:8 scaling:off origin:(2560,0) degree:0"'

export VAGRANT_EXPERIMENTAL=disks

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
