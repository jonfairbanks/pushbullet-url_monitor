#!/bin/bash

# pushbullet-url_monitor.sh - Monitors URL endpoint & sends a Pushbullet notification if unavailable after 10 seconds.
# Author - Jon Fairbanks (https://github.com/jonfairbanks)
# Version - 1.3

PBTOKEN="<YOUR PUSHBULLET API TOKEN>"
URL="<YOUR URL ENDPOINT>"
LOG="/var/log/pushbullet-url_monitor.log"
TIME=$(date +%r)

if curl --output /dev/null --silent --head --fail --connect-timeout 10 "$URL"; then
        echo "[OK] Web Page Available on Remote Networks" | tee -a "$LOG"
else
        curl    -u $PBTOKEN: https://api.pushbullet.com/v2/pushes \
                -d type=note \
                -d title="[WARN] Web Page Not Available!" \
                -d body="Health check at $TIME failed."
        sleep 3
		echo "[WARN] Web Page NOT Available @ $TIME" | tee -a "$LOG"
fi
exit
