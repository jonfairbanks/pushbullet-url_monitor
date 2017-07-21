# pushbullet-url_monitor

Basic shell script to monitor a URL endpoint &amp; send a Pushbullet notification if unavailable.

### Setup
Create a temp file for logging (will be handled automatically in a later release):
```
sudo touch /var/log/pushbullet-url_monitor.log
```

You can also run this script on a schedule with cron! Setup using 'crontab -e' to edit & 'crontab -l' to verify.

Example crontab to run script every 1 minute:
```
* * * * * sudo /bin/bash /home/<YOUR USER>/pushbullet-url_monitor.sh
```

### Changelog
- v1: Initial Commit
- v1.2: Added timestamp & logging
- v1.3: Added a separate script to send notifications via email instead of through Pushbullet
