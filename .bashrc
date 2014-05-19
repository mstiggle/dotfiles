PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

. ~/.aliases

export EDITOR=emacs

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/share/python:$PATH"
export PATH="/usr/local/julia:$PATH"
export PATH="/usr/local/yum:$PATH"
export PATH="/usr/texbin:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH=/opt/local/bin:/opt/local/sbin:$PATH

export GOPATH=~/Documents/Developer/Go

### For virtualenvwrapper
if [ ! -f /usr/local/bin/virtualenvwrapper.sh ];
then
    echo "[bashrc] virtualenvwrapper is not installed"
else
    export WORKON_HOME=$HOME/.virtualenvs
    export PROJECT_HOME=$HOME/Devel
    source /usr/local/bin/virtualenvwrapper.sh
fi

source ~/.git-completion.bash
