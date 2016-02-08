# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="badger"

# Example aliases
# alias zshconfig="gedit ~/.zshrc
# alias ohmyzsh="gedit ~/.oh-my-zsh"

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
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github rails rails3 ruby rvm gem node nyan bundler cap rake)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/home/alex/local/bin:/home/alex/local/sbin:/home/akex/usr/sbin:/usr/local/pgsql/bin:/home/alex/.rvm/gems/ruby-1.9.3-p194/bin:/home/alex/.rvm/gems/ruby-1.9.3-p194@global/bin:/home/alex/.rvm/rubies/ruby-1.9.3-p194/bin:/home/alex/.rvm/bin:/home/alex/local/node/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/alex/.rvm/bin

# misc
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# aliases
alias subl="sublime"
alias zshconfig="vi ~/.zshrc &"
