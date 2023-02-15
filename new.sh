#!/bin/sh

main_dir = /var/backup
dir_day=`date +%d-%m-%Y`
dir_name=`date +%d-%m-%Y-%R`

delete_after_days=10

mongodump --db=test --collection=users --out=$main_dir/$dir_day/$dir_name

find $main_dir -type f -mtime $delete_after_days -exec rm -rf {} \;
