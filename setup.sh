#!/bin/bash

# Simple script to replace .gitconfig w/ 
# a symbolc link to the config file in this directory

readonly GITCONFIG=$HOME/.gitconfig

if [ -f $GITCONFIG ]; then
    rm -rf $GITCONFIG
fi

ln -s $(greadlink -f ./git) $GITCONFIG

if [ $? -eq 0 ]; then
    echo "success"
fi
