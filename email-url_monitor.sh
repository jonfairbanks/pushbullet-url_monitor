#!/bin/bash

# email-url_monitor.sh - Monitors URL endpoint & sends an email if unavailable after 10 seconds.
# Author - Jon Fairbanks (https://github.com/jonfairbanks)
# Version - 1.3

URL="<YOUR URL ENDPOINT>"
LOG="/var/log/pushbullet-url_monitor.log"
TIME=$(date +%r)
RECIPIENT="someone@somewhere.com"

if curl --output /dev/null --silent --head --fail --connect-timeout 10 "$URL"; then
        echo "[OK] Web Page Available on Remote Networks" | tee -a "$LOG"
else
        mail -s "[WARN] Web Page NOT Available @ $TIME" "$RECIPIENT"
        sleep 3
	echo "[WARN] Web Page NOT Available @ $TIME" | tee -a "$LOG"
fi
exit
