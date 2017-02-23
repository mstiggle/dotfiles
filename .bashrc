PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

. ~/.aliases

export EDITOR=emacs

export PATH="/usr/local:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/julia:$PATH"
export PATH="/usr/local/yum:$PATH"
export PATH="/usr/texbin:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
### For Terraform
export PATH="/usr/local/terraform/bin:$PATH"

export ANDROID_HOME="~/Library/Android/sdk"
export GOPATH="$HOME/Dev/Go"
export PATH="$GOPATH/bin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"

eval "$(pyenv init -)"
pyenv rehash
export PATH="$(pyenv root)/shims:$PATH"

source ~/.git-completion.bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
