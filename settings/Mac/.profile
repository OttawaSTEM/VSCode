# /bin/bash
# Command prompt color
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Custom Prompt
NORMAL="\[\033[m\]"
YELLOW="\[\033[33;1m\]"
GREEN="\[\033[1;32m\]"
CYAN="\[\033[1;36m\]"
RED="\[\033[1;91m\]"

# Kubernetes
alias k="kubectl"
alias kctx="kubectx"
alias kns="kubens"
k8s () {
    K8S_CLUSTER=$(kubectx -c 2> /dev/null)
    if [ -n "${K8S_CLUSTER}" ]; then
        echo "$(kubectx -c):$(kubens -c)"
    fi
}

git_branch () {
    git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/[\1]/"
}
export PS1="${YELLOW}[\$(k8s)] ${CYAN}\u${NORMAL}@${GREEN}\h${NORMAL}:${YELLOW}\W${NORMAL} ${RED}\$(git_branch)${NORMAL}\$ "

set -o vi
alias sudo="sudo "
alias l="ls -al"

# Go
export PATH=$PATH:/home/keli/go/bin

# Start Docker daemon automatically when logging in if not running.
RUNNING=`ps aux | grep dockerd | grep -v grep`
if [ -z "$RUNNING" ]; then
    sudo service docker start > /dev/null
fi
