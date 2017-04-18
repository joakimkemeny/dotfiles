export PATH=$PATH:/opt/bin

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="joakimkemeny"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
ZSH_CUSTOM=$HOME/.oh-my-customizations

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(aws brew fasd gem git git-flow npm osx zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="vim"
else
  export EDITOR="/usr/local/bin/mate -w"
fi

# Exports
export PATH="/Users/joakim/Projects/Presentations/presentation.serverless/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.yarn/bin:/Users/joakim/Projects/Presentations/presentation.serverless/.bin"
export ZSH_COMPDUMP=~/.zsh-compdump

# Synology extensions
if [[ -a "/usr/syno" ]]; then
  export PATH="$PATH:/opt/bin:/opt/sbin:/opt/local/bin:/usr/syno/sbin:/usr/syno/bin:/usr/local/sbin:/var/packages/JavaManager/target/Java/bin:/var/packages/JavaManager/target/Java/jre/bin:/var/packages/JavaManager/target/Java/bin:/var/packages/JavaManager/target/Java/jre/bin"
  export JAVA_HOME="/var/packages/JavaManager/target/Java"
  export PYTHONPATH=/opt/local/lib/python2.7/site-packages
fi

# Aliases
alias nr="npm run -s"
alias y="yarn"
alias yr="yarn run"
alias yi="yarn install --pure-lockfile"
alias l="ls -l"
alias c="fasd_cd -d"
alias ccred="node-red -u ~/Projects/Telenor/Source/.node-red"

if (( $+commands[tabs] )); then
  tabs -3
fi

# Tree with hidden files but with some directories excluded
function tre() {
  tree -aC -I '.git|node_modules|bower_components' --dirsfirst "$@" | less -FRX
}

# Determine size of a file or total size of a directory
function fs() {
  if du -b /dev/null > /dev/null 2>&1; then
    local arg=-sbh
  else
    local arg=-sh
  fi
  if [[ -n "$@" ]]; then
    du $arg -- "$@"
  else
    du $arg .[^.]* *
  fi
}

# added by travis gem
[ -f /Users/joakim/.travis/travis.sh ] && source /Users/joakim/.travis/travis.sh
