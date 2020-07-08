#!/bin/bash

inf=i.$1
outf=o.$1
wget -c $2 -O $inf
HandBrakeCLI --preset-import-file handbrake.preset.json --preset LibreTuition -i $inf -o $outf

sudo rm $inf
MP4Box -splits 92160 $outf
sudo rm $outf

