### oh-my-zsh

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(brew git)
source $ZSH/oh-my-zsh.sh

### my configuration

export PATH="/usr/local/bin:/usr/local/heroku/bin:$HOME/.rbenv/shims:$HOME/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
export EDITOR='vim'
# for Umlauts etc in file names
export LC_CTYPE=UTF-8

alias grm='git rebase master'
alias gh="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"

# rbenv
eval "$(rbenv init -)"

# enable vi mode in shell
set -o vi

# autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
