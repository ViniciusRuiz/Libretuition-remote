#!/bin/bash

sudo apt-get update
sudo apt-get install -y curl wget handbrake-cli gpac ffmpeg screen nano

chmod +x *.sh
sudo chown $USER ./

echo Lets liberate
echo 
