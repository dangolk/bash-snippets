# Cron service will help you run jobs that run every minute, hour, week, month
# Its a time-based job scheduler, name origin 'cron' from Greek word for time 'chronos'

# User cron jobs stored in /var/spool/cron/<user> -> managed by users
# System cron jobs stored in /etc/cron.d -> managed by root/superuser

# Example of job definition:
# .---------------- minute (0 - 59) (* means it'll run every minute)
# |  .------------- hour (0 - 23) (* means it'll run every hour)
# |  |  .---------- day of month (1 - 31) (* means it'll run every day)
# |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...  (* means it'll run every month)
# |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
# |  |  |  |  |
# *  *  *  *  * user-name  command to be executed
  45 23 *  *  6 /home/grant/bin/backup.sh
# Actual crontab example below (without spaces)
45 23 * * 6 /home/grant/bin/backup.sh
# more than one value in each field is acceptable
15,30,45 23 * * 6 /home/grant/bin/backup.sh


## MINUTE
# above cron job will run every 15th, 30th and 45th minute
# Ranges are accepted as well
15-45 23 * * 6 /home/grant/bin/backup.sh
# Step value is also accepted
*/10 23 * * 6 /home/grant/bin/backup.sh
# will run every 10 mins -> will run every 10th minute, skipping the nine in between
# Provide range and step value
1-59/2 23 * * 6 /home/grant/bin/backup.sh
# will run the cron job on every odd minute -> 1,3,5,7,9,11 ... 59


## HOUR
45 23 * * 6 /home/grant/bin/backup.sh
# will run on 23rd hours of the day -> 11 PM, midnight is hour 0, * means cron job will run every hour

# Show cron status
crontab -l
systemctl status cron

# Create cron job
crontab -e

# More on crontab
man crontab
man 5 crontab
# number '5' is the category 

# Example system cron job created automatically by PHP /etc/cron.d/php
# Look for and purge old sessions every 30 minutes
09,39 *     * * *     root   [ -x /usr/lib/php/sessionclean ] && if [ ! -d /run/systemd/system ]; then /usr/lib/php/sessionclean; fi

# Create system cron jobs
sudo vim /etc/cron.d/backupdocs
0 1 * * * root rsync -a /home/sysadmin/Documents /home/sysadmin/Documents.bak
# will store this system cron job in /etc/cron.d/backupdocs

# Few shortcuts are available for system cron jobs:
# if you have a script that you'd like to run every hour, and don't want to fiddle with crontab
# just copy that script file to /etc/cron.hourly/
# same goes for:
# /etc/cron.daily
# /etc/cron.hourly
# /etc/cron.monthly
# /etc/cron.weekly

# To view all of this in terminal, including contents of directory
ls /etc/cron.*
ls /etc/cron.* -al

# To view just the list of above directories
ls /etc/cron.* -ald

# To control access to who gets to create at and cron jobs,
/etc/at.allow
/etc/at.deny
/etc/cron.allow
/etc/cron.deny
# allow overrides deny