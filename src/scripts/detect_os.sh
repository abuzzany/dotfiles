#!/usr/bin/env bash

# Detect the operating system
if [ "$(uname)" == "Darwin" ]; then
    echo "MacOS"
elif [ "$(uname)" == "Linux" ]; then
    echo "Linux"
else
    echo "Unknown"
fi
