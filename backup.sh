#!/bin/bash


#SOURCE="$HOME/"
curdate=$(date +%m-%d-%Y)

rsync -avb --delete --backup-dir="/home/challe/rsyncdata" /home/challe/test123 /home/challe/skola2
