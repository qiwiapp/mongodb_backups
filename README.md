
# prod
old
curl https://raw.githubusercontent.com/qiwiapp/mongodb_backups/master/old_platform.sh > /var/backup/backup.sh

new
curl https://raw.githubusercontent.com/qiwiapp/mongodb_backups/master/new_platform.sh > /var/backup/backup.sh



sudo nano /etc/crontab
grep CRON /var/log/syslog
0 5    * * *   root sh /var/backup/backup.sh
0 16    * * *   root sh /var/backup/backup.sh


# dev
* *    * * *   root sh /var/backup/backup.sh
