# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/Users/mckay-harris/apache-maven-3.5.2/bin:/Users/mckay-harris/anaconda3/bin:$PATH"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/Users/mckay-harris/.local/bin"

# Path to your oh-my-zsh installation.
export ZSH="/Users/mckay-harris/.oh-my-zsh"
source $(dirname $(gem which colorls))/tab_complete.sh
source /etc/zprofile

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export SANDBOX_HOME=~/Code/Repos/dvs-sandbox
export COMPOSER_HOME=~/Code/Repos/dp-composer

# AWS Credentials and Utils
export AWS_ACCESS_KEY_ID=****
export AWS_SECRET_ACCESS_KEY=****
alias get-token="source ~/Code/Scripts/get-token.sh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"
SPACESHIP_PROMPT_ADD_NEWLINE="true"
#SPACESHIP_CHAR_SYMBOL="\ue7a1" OWL
#SPACESHIP_CHAR_SYMBOL="\ue27f"
SPACESHIP_CHAR_SYMBOL="\ue286"
SPACESHIP_CHAR_SUFFIX=(" ")
SPACESHIP_CHAR_COLOR_SUCCESS="white"
SPACESHIP_PROMPT_DEFAULT_PREFIX="$USER"
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="true"
SPACESHIP_USER_SHOW="true"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  brew
  docker-compose
  git
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias ls=’colorls — light — sort-dirs — report’
alias ll='colorls -l -t --sd'
alias la='colorls -lA --sd'
alias lc='colorls -lA --sd --tree'
alias kafka_home="cd /usr/local/Cellar/kafka/1.0.0/bin"
alias dc=docker-compose
alias ddir='cd $COMPOSER_HOME'
alias dfresh='$COMPOSER_HOME/scripts/refresh.sh'
alias dstart='cd $COMPOSER_HOME && docker-compose up -d && cd - > /dev/null'
alias dstop='cd $COMPOSER_HOME && docker-compose stop && cd - > /dev/null'
alias dps='cd $SANDBOX_HOME && docker-compose ps && cd - > /dev/null'
alias sdir='cd $SANDBOX_HOME'
alias sfresh='cd $SANDBOX_HOME; docker-compose down; docker-compose up -d'
alias sstart='cd $SANDBOX_HOME && docker-compose up -d && cd - > /dev/null'
alias sstop='cd $SANDBOX_HOME && docker-compose stop && cd - > /dev/null'
alias sps='cd $SANDBOX_HOME && docker-compose ps && cd - > /dev/null'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias dnuke='bash ~/Code/Scripts/nukeit.sh'
alias pg-dev='psql -h docker -U postgres'
alias repos='cd ~/Code/Repos'
alias chrome='open -a "Google Chrome"'
alias adhoc='ssh mckay@hydra-adhoc-production.vnerd.com'
alias zsource='source ~/.zshrc'
