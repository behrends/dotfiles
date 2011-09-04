# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# themes in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

if [ "$OSTYPE" = "linux-gnu" ]; then
  plugins=(git)
  bindkey "^[[1;3C" forward-word
  bindkey "^[[1;3D" backward-word
else
  plugins=(git)
fi

source $ZSH/oh-my-zsh.sh

# rvm 
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

export RUBYMINE_HOME="/Applications/RubyMine 3.1.1.app/"

export PATH=/usr/local/bin:$HOME/bin:$PATH

