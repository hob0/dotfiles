# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"
#ZSH_THEME="norm"

set -o vi
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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

# Uncomment the following line if you want to disable $HOMEing untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="$HOME/.rvm/gems/ruby-2.2.0/bin:/Users/$HOME/.rvm/gems/ruby-2.2.0@global/bin:/Users/$HOME/.rvm/rubies/ruby-2.2.0/bin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/$HOME/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

mp() {
  mkdir $HOME/engagements/$1
  mkdir $HOME/engagements/$1/screenshots
  mkdir $HOME/engagements/$1/reporting
  mkdir $HOME/engagements/$1/daily-status-updates
  cd $HOME/engagements/$1
  cp $HOME/engagements/reporting/notes_template.mkd notes.mkd
}

daily() {
dt=$(date -v +1d '+%m-%d-%Y');
cp ~/Engagements/docs/Praetorian\ -\ Client\ -\ Daily\ Update\ -\ MM-DD-YYYY.docx ./Praetorian\ -\ "$1"\ -\ Daily\ Update\ -\ "$dt".docx
open Praetorian\ -\ "$1"\ -\ Daily\ Update\ -\ "$dt".docx
}

alias c="clear"
alias ncat="/usr/local/Cellar/nmap/6.47/bin/ncat"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias python="python3.4"
alias pip="pip3"
alias en="cd ~/engagements"
alias pr="cd ~/Projects"
alias p="echo `pbpaste`"
# alias daily="cp ~/Engagements/docs/Praetorian\ -\ Client\ -\ Daily\ Update\ -\ MM-DD-YYYY.docx ."
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
