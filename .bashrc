export EDITOR='vim'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=”$HOME/.emacs.d/bin:$PATH # add Doom to path

# golang stuff
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
