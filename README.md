# pushbullet-url_monitor

Shell script to monitor URL endpoint &amp; send a Pushbullet notification if unavailable.

### Setup
You can run this script on a schedule with cron! Setup using 'crontab -e' to edit & 'crontab -l' to verify.

Example crontab to run script every 1 minute:
```
* * * * * sudo /bin/bash /home/<YOUR USER>/pushbullet-url_monitor.sh
```

### Changelog
- v1: Initial Commit
