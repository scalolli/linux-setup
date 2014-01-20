#!/bin/sh

echo "Installing oh my zsh"
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

echo "Setting default shell to zsh"
chsh -s /bin/zsh