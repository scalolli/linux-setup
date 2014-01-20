#!/bin/sh

echo "Setting up code repos"
repos=sm-repositories

[ -d "$repos" ] || mkdir "$repos"

cd "$repos"
