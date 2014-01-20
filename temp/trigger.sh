#!/bin/bash

apt-get install curl wget vim git zsh -y

sudo rm -rf ~/oh-my-zsh

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

cp ~/.zshrc ~/.zshrc.orig

cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

sudo chsh -s /bin/zsh

