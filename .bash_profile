## Author: Vijayendra Bapte

## Mac terminal colors
alias ls='ls -G'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias egrep='egrep --colour=auto'

function parse_git_branch { 
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/git(\1)/' 
}

export PS1='\[\033[00;31m\]👉  \[\033[00;33m\]\u: \[\033[00;31m\]$(parse_git_branch)\[\033[00;32m\][\W]\[\033[00;34m\] $ '

export GOROOT=/usr/local/go
export GO_GAE_SDK=/usr/local/go_appengine
export GOPATH=$HOME/gowork
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin:$GO_GAE_SDK:$GO_GAE_SDK/goroot/bin
