# pushbullet-url_monitor

Shell script to monitor URL endpoint &amp; send a Pushbullet notification if unavailable.

### Setup
You can run this script on a schedule with cron! Setup using 'crontab -e' to edit & 'crontab -l' to verify.

Example crontab to run script every 1 minute:
```
* * * * * sudo /bin/bash /home/<YOUR USER>/pushbullet-url_monitor.sh
```

Also create a touch file for logging (will be handled automatically in a later release):
```
sudo touch /var/log/urlMonitor.log
```

### Changelog
- v1: Initial Commit
- v1.2: Added timestamp & logging
