export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  direnv
        git
        kube-ps1
        zsh-history-substring-search
        zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh




if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

#source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh


alias k='kubectl '
alias ka='kubectl --as cluster-admin'
alias kwp='watch -n 0.1 kubectl get pod'
alias kwo='watch -n 0.1 kubectl get object'
alias kwoa='watch -n 0.1 kubectl --as cluster-admin get object'


autoload -U compinit && compinit

export HISTSIZE=100000
export SAVEHIST=100000

PROMPT='$(kube_ps1)'$PROMPT

setopt EXTENDED_HISTORY
compinit