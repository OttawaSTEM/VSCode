export PATH=$PATH:/Users/Patrick/Documents/Tools/Flutter/bin

# Kubernetes
function k8s() {
    K8S_CLUSTER=$(kubectx -c 2> /dev/null)
    if [ -n "${K8S_CLUSTER}" ]; then
        echo "$(kubectx -c):$(kubens -c)"
    fi
}
alias k="kubectl"
alias kctx="kubectx"
alias kns="kubens"

function git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

setopt PROMPT_SUBST
NEWLINE=$'\n'
export PROMPT='%F{yellow}[$(k8s)] %F{cyan}%n%F{red}@%F{green}%m:%F{yellow}%d %F{red}$(git_branch)%F{white}$%F{reset}${NEWLINE}'

set -o vi
alias l="ls -al"
alias sudo="sudo "
