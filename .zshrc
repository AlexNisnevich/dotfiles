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
#plugins=(git github rails rails3 ruby rvm gem node nyan bundler cap rake kubectl)
plugins=(git github node kubectl)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/home/alex/local/bin:/Users/alex/local/bin:$PATH

# misc

# aliases
alias subl="sublime"
alias are="aretext"
alias zshconfig="are ~/.zshrc"
alias venv="source ./env/bin/activate"

# directory aliases
alias h="cd ~/src/harbor"
alias hd="cd ~/src/harbor/data-collection && venv"
alias hdc="cd ~/src/harbor/data-collection/data_manager/client"
alias d="cd ~/src/devops && venv"

export AWS_ACCESS_KEY_ID='AKIAIEG2MPKZ464MRHTQ'
export AWS_SECRET_ACCESS_KEY='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'
export EC2_INSTANCE_FILTERS='tag:Manager=ansible'

#source /usr/local/bin/virtualenvwrapper.sh

export NVM_DIR=~/.nvm                  
source $(brew --prefix nvm)/nvm.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"
#source $HOME/.rvm/scripts/rvm

export PATH=$PATH:/Users/alex/src/harbor/codalab-cli/codalab/bin
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/python@3.7/bin:$PATH"
export PATH=$PATH:$HOME/go/bin 

export AZURE_ARTIFACTS_PAT=teuozd7wo45lfguigpywyzmpz5tjusnshlprlqxi2u6zlpavzh2q
