#!/bin/bash

#who needs neofetch?
#this script checks if you use arch, BTW.

echo "oh really, do you use arch? let me check..."
sleep 1.5

# Check for the distribution
if [ -f /etc/os-release ]; then
    . /etc/os-release
    if [ "$ID" = "arch" ]; then
        echo "it is true, you really use Arch. you can now proudly say \"I Use Arch BTW\""
    else
        echo "Oh no... you don't use arch! you actually use $NAME. Come on, install arch already!"
        sleep 0.2
        echo "here is how: https://wiki.archlinux.org/title/Installation_guide"
    fi
else
    echo "No idea what you're using, but it doesn't look like Arch Linux to me..."
fi
