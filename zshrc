# Path to your oh-my-zsh configuration.
ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="wirelab"
ZSH_DIR="$HOME/.zsh"

source "$ZSH_DIR/config"
source "$ZSH_DIR/aliases"
source "$ZSH_DIR/bindings"
source "$ZSH/oh-my-zsh.sh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler brew git-flow cloudapp github heroku pow powder cucumber rspec)

# Set the definite PATH

export PATH="$HOME/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

# use .local_zshrc for settings specific to one system
[[ -f ~/.local_zshrc ]] && . ~/.local_zshrc

eval "$(rbenv init -)"

eval "$(hub alias -s)"