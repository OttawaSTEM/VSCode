# /bin/bash
# Command prompt color
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Custom Prompt
set -o vi
alias sudo="sudo "
alias l="ls -al"

k8s_cluster() {
    kubectx -c
}
k8s_namespace() {
    kubens -c
}
git_branch() {
    git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/\1/"
}
export PS1="[\[\033[33;1m\]\$(k8s_cluster):\$(k8s_namespace)\[\033[m\]] \[\033[1;36m\]\u\[\033[m\]@\[\033[1;32m\]\h:\[\033[33;1m\]\W\[\033[m\] [\[\033[1;91m\]\$(git_branch)\[\033[m\]]\$ "  
