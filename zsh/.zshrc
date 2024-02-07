
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$HOME/bin

# Brew on M1
export PATH=/opt/homebrew/bin:$PATH

if [ -z "$INTELLIJ_ENVIRONMENT_READER" ]; then

  if [ -e "$(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" ]; then
    source "$(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme"
  fi 

  # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
  # shellcheck disable=SC1090
  [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
fi

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
    extract \
    gitfast \
    git-flow-avh \
    gpg-agent \
    gradle \
    history \
    httpie \
    kubectl \
    mvn \
    profiles \
    sdk \
    sudo \
    terraform \
    thefuck
)

# User configuration

export CA_CERTIFICATES_PATH="$(brew --prefix)/etc/ca-certificates/cert.pem"
export REQUESTS_CA_BUNDLE="$CA_CERTIFICATES_PATH"      # for Python
export SSL_CERT_FILE="$CA_CERTIFICATES_PATH"           # for OpenSSL
export CURL_CA_BUNDLE="$CA_CERTIFICATES_PATH"          # for curl

# https://dev.gnupg.org/T5415
export PATH="$(brew --prefix)/opt/gnupg@2.2/bin:$PATH"

# Android
export ANDROID_SDK_ROOT="$(brew --prefix)/share/android-sdk"
export PATH=$PATH:$ANDROID_SDK_ROOT/tools

# Docker
# added to the end, because we don't want the old kubectl from docker
export PATH="$PATH:$HOME/.docker/bin"

# Kubernetes
export PATH="${PATH}:${HOME}/.krew/bin"

# Node
NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin"

# SDKMAN
source "$HOME/.sdkman/bin/sdkman-init.sh"

# Preserve MANPATH if you already defined it somewhere in your config.
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

export XDG_CONFIG_HOME=$HOME/.config

source $ZSH/oh-my-zsh.sh

autoload -U +X bashcompinit && bashcompinit

if [ -e "$(brew --prefix)/etc/bash_completion.d/az" ]; then
    source "$(brew --prefix)/etc/bash_completion.d/az"
fi

if [ -d ~/go ]; then
    export GOPATH=$HOME/go
    export GOROOT="$(brew --prefix golang)/libexec"
    export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
fi

if [ -d $(brew --prefix ruby) ]; then
    export PATH="$(brew --prefix ruby)/bin:$PATH"
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

work="architecture asm bos conf dt infrastructure isi mes network plm security"
export work

alias .f='cd ~/.dotfiles'
alias dl='cd ~/Downloads'
alias p='cd ~/Projects'

# OSS projects
alias fp='cd ~/Projects/oss/faux-pas'
alias jdm='cd ~/Projects/oss/jackson-datatype-money'
alias lb='cd ~/Projects/oss/logbook'
alias pb='cd ~/Projects/oss/problem'
alias psw='cd ~/Projects/oss/problem-spring-web'
alias rt='cd ~/Projects/oss/riptide'
alias sb='cd ~/Projects/oss/switchboard'
alias tc='cd ~/Projects/oss/tracer'

# Work projects
alias a='cd ~/Projects/architecture'
alias aa='cd ~/Projects/architecture/architecture'
alias tgc='cd ~/Projects/architecture/tech.gropyus.com'

alias aca='cd ~/Projects/bos/account-certificate-api'
alias akc='cd ~/Projects/bos/account-keycloak'
alias bas='cd ~/Projects/bos/building-device-attestation-api'
alias bca='cd ~/Projects/bos/building-device-config-api'
alias bdca='cd ~/Projects/bos/building-device-dashboard-certificate-api'
alias bua='cd ~/Projects/bos/building-device-update-api'

alias i='cd ~/Projects/infrastructure'
alias ii='cd ~/Projects/infrastructure/infrastructure'
alias st='cd ~/Projects/infrastructure/service-templates'

alias sts='cd ~/Projects/security/edge-authentication-security-token-service'

## Personal
alias dla='python3 /usr/local/bin/youtube-dl --verbose --format 140 --no-cache-dir --output "%(title)s.%(ext)s"'
alias dlv='python3 /usr/local/bin/youtube-dl --verbose --format best --no-cache-dir --output "%(title)s.%(ext)s"'

alias rearrange-displays1='displayplacer "id:4E7A3C33-3042-E730-215F-F57C677FCE1B res:2560x1440 hz:59 color_depth:8 scaling:off origin:(0,0) degree:0" "id:CE62D897-B052-E9AB-8182-C794F1AD4729 res:1792x1120 hz:59 color_depth:8 scaling:on origin:(-2560,320) degree:0" "id:D6F36547-895B-A709-1CB1-B3048CBF52CB res:2560x1440 hz:59 color_depth:8 scaling:off origin:(2560,0) degree:0"'
alias rearrange-displays2='displayplacer "id:D6F36547-895B-A709-1CB1-B3048CBF52CB res:2560x1440 hz:59 color_depth:8 scaling:off origin:(0,0) degree:0" "id:CE62D897-B052-E9AB-8182-C794F1AD4729 res:1792x1120 hz:59 color_depth:8 scaling:on origin:(-2560,320) degree:0" "id:4E7A3C33-3042-E730-215F-F57C677FCE1B res:2560x1440 hz:59 color_depth:8 scaling:off origin:(2560,0) degree:0"'

genid() {
  nanoid -a 13456789abcedfghijkmnopqrstuw -s 26
}

logs() {
  namespace=$1
  deployment=$2
  shift 2

  kubectl logs -f "$@" -n "$namespace" "deployment/$deployment"
}

all-logs() {
  logs "$@" --all-containers
}

main-logs() {
  logs "$@" --container main
}

envoy-logs() {
  logs "$@" --container envoy-sidecar
}

secrets () {
  set -o allexport
  # shellcheck disable=SC1090
  source <(sops --decrypt --output-type dotenv ~/.dotfiles/secrets.yaml)
  set +o allexport
}

setup-tf() {
  args="-var-file $HOME/Projects/infrastructure/infrastructure/GLOBAL.tfvars.json -var-file $HOME/Projects/infrastructure/infrastructure/budgets.tfvars.json"
  export TF_CLI_ARGS_apply="$args"
  export TF_CLI_ARGS_destroy="$args"
  export TF_CLI_ARGS_import="$args"
  export TF_CLI_ARGS_plan="$args"
  export TF_CLI_ARGS_refresh="$args"

  export API_DATA_IS_SENSITIVE=true

  export TF_VAR_opsgenie_api_key=fake
  export TF_VAR_cortex_xdr_agent_version=
  export TF_VAR_cortex_xdr_distribution_id=
  export TF_VAR_cortex_xdr_docker_config_password=
  export TF_VAR_cortex_xdr_docker_config_auth=
}

source "$HOME/.cargo/env"
