#!/bin/sh

main_dir=/var/backup/platform
dir_day=`date +%d-%m-%Y`
dir_name=`date +%R`

delete_after_days=7

out_name=$main_dir/$dir_day/$dir_name
echo $out_name
mongodump --db=test --collection=symbolSettings --out=$out_name
mongodump --db=test --collection=users --out=$out_name
mongodump --db=test --collection=orders --out=$out_name
mongodump --db=test --collection=transactions --out=$out_name
mongodump --db=test --collection=promos --out=$out_name
mongodump --db=test --collection=finances --out=$out_name
mongodump --db=test --collection=admins --out=$out_name
mongodump --db=test --collection=settings --out=$out_name

find $main_dir -type f -mtime $delete_after_days -exec rm -rf {} \;
