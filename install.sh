#!/bin/bash

sudo apt-get update
sudo apt-get install -y curl wget handbrake-cli gpac ffmpeg screen nano

chmod +x *.sh

if [ -z "$1" ]
then
    echo "Usage : ./install USERNAME"
else
    sudo chown $1 ./

    echo Welcome $1
    echo Lets liberate
    echo 
fi


