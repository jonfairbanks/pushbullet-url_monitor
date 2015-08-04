#!/bin/bash

# pushbullet-url_monitor.sh - Monitors URL endpoint & sends a Pushbullet notification if unavailable
# Author - Jon Fairbanks (https://github.com/jonfairbanks)
# Version - 1.0

PBTOKEN="<YOUR PUSHBULLET API TOKEN>"
URL="<YOUR URL ENDPOINT>"

if curl --output /dev/null --silent --head --fail --connect-timeout 5 "$URL"; then
        echo "[OK] Web Page Available on Remote Networks"
        sleep 1
else
        curl    -u $PBTOKEN: https://api.pushbullet.com/v2/pushes \
                -d type=note \
                -d title="[WARN] Web Page Not Available!" \
                -d body="Check its status here: $URL"
        sleep 1
fi
exit