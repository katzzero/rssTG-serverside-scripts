#!/bin/bash

TOKEN="820214276:AAFYowPFC6zHK3U0jPsX3DVD4QkRVLgP_OE"
CHAT_ID=-368558878
MESSAGE1="System booted correctly - "
MESSAGE2=$(date '+%d/%m/%Y %H:%M:%S')
MESSAGE3=${SSH_CLIENT%% *}
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
RESPONSE=1

while(($RESPONSE==1))
do
        if ping -c 1 -w 1 8.8.8.8
        then
        RESPONSE=0
        else
        sleep 10
        fi
done

curl -s -X POST $URL -d chat_id=$CHAT_ID \
     -d parse_mode=markdown \
     -d text="\`$MESSAGE1%0A$MESSAGE2\`" \
     &> /dev/null
