#!/bin/bash

sudo apt-get install curl -y

\curl -L https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

rvm install 1.9.3

source ~/.bashrc
source ~/.rvm/scripts/rvm

rvm install rake

rake

