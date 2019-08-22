#          __                                     __
#   ____  / /_     ____ ___  __  __   ____  _____/ /_  __ _______
#  / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \'__ __/____|
# / /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / // /   //
# \____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_//_/   /(__
#                         /____/

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster"
# ZSH_THEME="robbyrussell"

# Font mode for powerlevel9k
POWERLEVEL9K_MODE="nerdfont-complete"

# Prompt elements
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator context dir dir_writable dir_writable_joined vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time background_jobs background_jobs_joined go_version virtualenv ip time)

# Set name of the theme to load.
ZSH_THEME="powerlevel10k/powerlevel10k"

# Prompt settings
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%F{white}"
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460%F{white} "
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX_ICON=$'%K{white}%k'
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX_ICON=$'%K{green}%F{black} \uf155 %f%F{green}%k\ue0b0%f '
# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
# POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
# POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=''
# POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=''

# Time
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'

# Separators
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR_ICON=$'\ue0b0'
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR_ICON=$'\ue0b1'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR_ICON=$'\ue0b2'
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR_ICON=$'\ue0b7'

# Dir colours
# POWERLEVEL9K_DIR_HOME_BACKGROUND='black'
# POWERLEVEL9K_DIR_HOME_FOREGROUND='white'
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='black'
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white'
# POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='yellow'
# POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'
# POWERLEVEL9K_DIR_SHORTEN_LENGTH=2
# POWERLEVEL9K_DIR_SHORTEN_STRATEGY="truncate_from_right"

# OS segment
POWERLEVEL9K_OS_ICON_BACKGROUND='black'
POWERLEVEL9K_LINUX_ICON='%F{cyan} \uf303 %F{white} arch %F{cyan}linux%f'

# VCS
# icons
POWERLEVEL9K_VCS_GIT_ICON=$'\uF113 '
POWERLEVEL9K_VCS_STAGED_ICON=$'\uf055'
POWERLEVEL9K_VCS_UNSTAGED_ICON=$'\uf421'
POWERLEVEL9K_VCS_UNTRACKED_ICON=$'\uf00d'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=$'\uf0ab '
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=$'\uf0aa '
# POWERLEVEL9K_HIDE_BRANCH_ICON=false
# config
# POWERLEVEL9K_SHOW_CHANGESET=false
# POWERLEVEL9K_VCS_SHOW_CHANGESET=false
# POWERLEVEL9K_CHANGESET_HASH_LENGTH=8
# POWERLEVEL9K_VCS_SHORTEN_LENGTH=4
# POWERLEVEL9K_VCS_SHORTEN_MIN_LENGTH=11
# POWERLEVEL9K_VCS_SHORTEN_STRATEGY="truncate_from_right"
# POWERLEVEL9K_VCS_SHORTEN_DELIMITER=".."
# POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='blue'
# POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
# POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='green'
# POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
# POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
# POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'


# Status
POWERLEVEL9K_STATUS_OK_ICON=$'\uf164'
POWERLEVEL9K_STATUS_ERROR_ICON=$'\uf165'
POWERLEVEL9K_STATUS_ERROR_CR_ICON=$'\uf165'

# Battery
POWERLEVEL9K_BATTERY_LOW_FOREGROUND='red'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='blue'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='green'
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='blue'
POWERLEVEL9K_BATTERY_VERBOSE=true

# Programming languages
POWERLEVEL9K_RBENV_PROMPT_ALWAYS_SHOW=true
POWERLEVEL9K_GO_VERSION_PROMPT_ALWAYS_SHOW=true

[[ $TMUX = "" ]] && export TERM="xterm-256color"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=30

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
    git 
    git-open
    z 
    extract 
    zsh-syntax-highlighting
    zsh-autosuggestions
    virtualenv
    virtualenvwrapper
    catimg
    )

source $ZSH/oh-my-zsh.sh


# =====================================================
# User configuration
# =====================================================
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

setopt HIST_IGNORE_DUPS

# Compilation flags
# export ARCHFLAGS="-arch x86_64"


# prompt_context() {}
DEFAULT_USER=$USER

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
# neovim
alias ope="nvim"
alias vim='nvim'
alias vi='nvim'
alias vimrc='nvim ~/.vimrc'
alias vimconf='nvim ~/.optimus/vplugs.conf.vim'

# zshrc
alias opezrc='nvim ~/.zshrc'
alias sourcezrc='source ~/.zshrc'

# git
alias gs="git status"
alias gsm="git summary"
alias ga='git add .'
alias gd='git diff'
alias gf='git fetch'
alias grv='git remote -v'
alias grb='git rebase'
alias gck='git checkout'
alias gbr='git branch'
alias gul="git pull"
alias gus="git push"
alias gl="git log"
alias gc="git commit -m"
alias gm="git merge"
alias gcl='git clone'

alias gop='git-open'

# virtualenvwrapper
alias won="workon"
alias deac='deactivate'
alias lsenv='lsvirtualenv'
alias mkenv='mkvirtualenv'
alias rmenv="rmvirtualenv"

# tmux
alias tnew='tmux new -s'
alias tatt='tmux attach'
alias tdtt='tmux detach'
 
# common
alias cls='clear'
alias ll='ls -l'
alias la='ls -a'
alias grep="grep --color=auto"
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias -s html=nvim
alias -s rb=nvim
alias -s go=nvim
alias -s py=nvim
alias -s js=nvim
alias -s json=nvim
alias -s c=nvim
alias -s txt=nvim
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'


# =====================================================
#  Personal settings
# =====================================================
export WORKON_HOME=~/.pyenvs
source ~/.local/bin/virtualenvwrapper.sh

# go
export GOROOT=$HOME/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/gos/ext:$HOME/gos/dev
# vim-go bin
export VIMGOBIN=$HOME/gos/mypkg/bin

# mysql
PATH="/usr/local/mysql/bin:${PATH}"
export PATH
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/
export VERSIONER_PYTHON_PREFER_64_BIT=no
export VERSIONER_PYTHON_PREFER_32_BIT=yes

# vim undodir
export VIMUNDO_DIR=$HOME/.vimundodir
