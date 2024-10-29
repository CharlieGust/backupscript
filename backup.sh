#!/bin/bash
#eval "$(ssh-agent -s)"
#ssh-add ~/.ssh/id_rsa


SOURCE="$HOME/"
DEST="challe@192.168.214.129:/home/challe/backup_challe"
curdate="del_files_$(date +%m-%d-%Y)"
ssh challe@192.168.214.129 "mkdir -p /home/challe/$curdate"

rsync -avb --delete --backup-dir="/home/challe/$curdate" $SOURCE $DEST
