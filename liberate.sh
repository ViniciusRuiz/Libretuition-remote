#!/bin/bash

inf=i.$1
outf=o.$1
wget -c $2 -O $inf
HandBrakeCLI --preset-import-file Libr.json --preset LibreTuition -i $inf -o $outf

sudo rm $inf
srv=$(curl -s https://apiv2.gofile.io/getServer | sed -E 's/.*?"server":"(.*?)".*?/\1/g')
curl --form "filesUploaded=@$outf;type=video/mp4" --form password=letslearn https://"$srv".gofile.io/upload >> $outf.txt
sudo rm $outf

