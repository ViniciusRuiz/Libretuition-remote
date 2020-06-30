#!/bin/bash

inf=i.$1
outf=o.$1
wget -c $3 -O $inf
HandBrakeCLI --preset-import-file handbrake.preset.json --preset LibreTuition -i $inf -o $outf

sudo rm $inf
srv=$(curl -s https://apiv2.gofile.io/getServer | sed -E 's/.*?"server":"(.*?)".*?/\1/g')
curl --form "filesUploaded=@$outf;type=video/mp4" --form password=$2 https://"$srv".gofile.io/upload >> $1.log
sudo rm $outf
cat $1.log

