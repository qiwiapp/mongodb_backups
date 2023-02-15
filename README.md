
# prod
old
curl https://raw.githubusercontent.com/qiwiapp/mongodb_backups/master/old.sh > /var/backup/backup.sh

new
curl https://raw.githubusercontent.com/qiwiapp/mongodb_backups/master/new.sh > /var/backup/backup.sh



sudo nano /etc/crontab
grep CRON /var/log/syslog
0 7    * * *   root sh /var/backup/backup.sh
0 18    * * *   root sh /var/backup/backup.sh
