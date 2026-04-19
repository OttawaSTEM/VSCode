# /bin/bash
# Git Shell

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
alias l="ls -al"

k8s () {
    K8S_CLUSTER=$(kubectx -c)
    if [ -n "${K8S_CLUSTER}" ]; then
        echo "[$(kubectx -c):$(kubens -c)]"
    fi
}

export PS1="${RED} $(k8s)${CYAN}\u${NORMAL}@${GREEN}\h${NORMAL}:${YELLOW}\w${NORMAL}${RED}`__git_ps1`${NORMAL}\$\n"
