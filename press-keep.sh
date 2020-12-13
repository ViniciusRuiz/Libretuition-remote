#!/bin/bash

inf=$1
outf=o.$1
HandBrakeCLI --preset-import-file handbrake.preset.json --preset LibreTuition -i $inf -o $outf
