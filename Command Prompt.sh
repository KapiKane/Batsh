#!/bin/bash

# Start up
echo Loading...
C="/usr/local/bin/C:/"
if ls /usr/local/bin/C:/Users/ | grep -q "^$(whoami)$"; then
    echo "Matching profile found"
    sleep 1
else
while true; do
    read -p "No matching profile found, do you want to add your own?(Y/N) " profile
    if [ "$profile" == "Y" ]; then
        cp -r /usr/local/bin/C:/Users/.User /usr/local/bin/C:/Users/$(whoami)
        cd /usr/local/bin/C:/Users/$(whoami)
        break
    elif [ "$profile" == "N" ]; then
        echo "you'll now use the public profile"
        cd /usr/local/bin/C:/Users/Public/
        profileName=Public
        break
    else
        echo "invalid try again"
    fi
    sleep 3
done

fi

# Top Part
echo "Kapi-Kaine [Version 1.0]"
echo "The Attribution-NonCommercial 4.0 International  Microsoft original. Some rights reserved"
echo

# Prompt ♾️
while true; do
read -p "C:/Users/$(whoami)> " input

#Commands

if [ "$input" == "exit" ]; then
echo "shutting down..."
sleep 3
exit
elif [[ "$input" == echo* ]]; then
eval $input
elif [[ "$input" == dir* ]]; then
eval ls
elif [[ "$input" == "" ]]; then
echo
elif [[ "$input" == cls ]]; then
eval clear
elif [[ "$input" == whoami ]]; then
eval whoami
else
echo "'$input' is not recognised as an internal or external command,"
echo "operatable program or batch file."
fi

done