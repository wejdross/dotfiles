#!/bin/bash

alias k='kubectl '
alias ka='kubectl --as cluster-admin'
alias kwp='watch -n 0.1 kubectl get pod'
alias kwo='watch -n 0.1 kubectl get object'
alias kwoa='watch -n 0.1 kubectl --as cluster-admin get object'
export EDITOR='vim'

## install oh-my-zsh

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "Oh-my-zsh is already installed."
fi

## install zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

## install zsh-history-substring-search

git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
kubectl completion zsh > ~/.oh-my-zsh/cache/completions/_kubectl 

cat .zshrc > ~/.zshrc
