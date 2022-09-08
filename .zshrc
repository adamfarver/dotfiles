# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/adamfarver/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="avit"

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

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
plugins=(git)
plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='lvim'
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi


# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls="ls -al"
alias mongod="sudo mongod --dbpath /System/Volumes/Data/data/db"
alias cl="clear"
alias c="clear"
alias ..="cd .. && ls"
alias dev="cd ~/dev"
alias ding="tput bel"
alias firefox="open /Applications/Firefox.app"
alias lv="lvim $1"
alias lsg="ls | grep $1"

# Git Command Aliases
alias ga="git add ."
alias gcm="git commit -m $1"
alias gp="git push"
alias gpull="git pull"
alias gs="git status"
alias gil="gh issue list"
alias gic="gh issue create"
alias gl="git log"

# Audio Switching Aliases
alias ashp="SwitchAudioSource -s External\ Headphones"
alias asm="SwitchAudioSource -s Mac\ mini\ Speakers"
alias assony="SwitchAudioSource -s WH-1000XM3"

# TMUX aliases
alias tls="tmux list-sessions"
alias tcs="tmux new-session -s $1"
alias ta="tmux attach"

# V m Mode inside zsh
bindkey -v
export KEYTIMEOUT=1

# PATH=/opt/local/bin:$PATH
# Current display layout
alias fixdisplay='displayplacer "id:EBCE6BE3-D901-C2F4-F910-293A07533937 res:1920x1080 hz:60 color_depth:8 scaling:off origin:(0,0) degree:0" "id:DD8E228D-66A6-D596-8FED-7040D4DA2B09 res:1920x1080 hz:60 color_depth:8 scaling:off origin:(0,-1080) degree:0" "id:9E4BF815-20EF-159A-95FD-E3496E099C45 res:1920x1080 hz:60 color_depth:8 scaling:off origin:(1920,0) degree:0"'

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:/Users/adamfarver/.yarn/bin:/Users/adamfarver/.config/yarn/global/node_modules/.bin:/Library/Frameworks/Python.framework/Versions/3.8/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:/Users/adamfarver/.yarn/bin:/Users/adamfarver/.config/yarn/global/node_modules/.bin:/Library/Frameworks/Python.framework/Versions/3.8/bin
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/python@3.9/bin:$PATH"

export ANDROID_SDK="/Users/adamfarver/Library/Android/sdk"
export PATH="/Users/adamfarver/Library/Android/sdk/platform-tools:$PATH"
export PATH="/usr/local/share/dotnet:$PATH"
export PATH="/Users/adamfarver/.local/bin:$PATH"


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
