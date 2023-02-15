
old
curl https://raw.githubusercontent.com//mongodb_backups/master/old.sh?token=GHSAT0AAAAAAB5RAM3QMSINR5EGTVLFNTC6Y7MVMIQ > /var/backup/backup.sh

new
curl https://raw.githubusercontent.com//mongodb_backups/master/new.sh?token=GHSAT0AAAAAAB5RAM3QY63CNLZZ2J3BJS7QY7MVNLQ > /var/backup/backup.sh



sudo nano /etc/crontab
1 *    * * *   root sh /var/backup/backup.sh
