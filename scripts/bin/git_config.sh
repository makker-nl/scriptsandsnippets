#!/bin/bash
# Add to bash profile
# Taken from https://anotheruiguy.gitbooks.io/gitforeveryone/content/auto/README.html
# Actual prompt taken from: https://www.baeldung.com/linux/bash-prompt-git

# Source git-prompt.sh if it exists.
if [ -f ~/.git-prompt.sh ]; then
    . ~/.git-prompt.sh
fi

# Source the git bash completion file
if [ -f ~/.git-completion.sh ]; then
    source ~/.git-completion.sh
    GIT_PS1_SHOWDIRTYSTATE=true
    GIT_PS1_SHOWSTASHSTATE=true
    GIT_PS1_SHOWUPSTREAM=\"auto\"
    # export PS1='\t:\[\033[32m\]$(__git_ps1 " (%s)")\[\033[00m\] \W$ '
    export PS1='\u@\h \[\e[32m\]\w \[\e[91m\]$(__git_ps1)\[\e[00m\]$ '
fi