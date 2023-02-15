#!/bin/sh

main_dir = /var/backup/platform
dir_day=`date +%d-%m-%Y`
dir_name=`date +%d-%m-%Y-%R`

delete_after_days=10

out_name = $main_dir/$dir_day/$dir_name
echo $out_name
mongodump --db=test --collection=users --out=$out_name

find $main_dir -type f -mtime $delete_after_days -exec rm -rf {} \;
