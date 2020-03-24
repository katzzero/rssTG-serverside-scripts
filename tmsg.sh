#!/bin/bash

TOKEN="820214276:AAFYowPFC6zHK3U0jPsX3DVD4QkRVLgP_OE" 
CHAT_ID=-243545877
MSG="$@"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id=$CHAT_ID \
     -d parse_mode=markdown \
     -d text="\`LapServer@$USER:\` $MSG" \
     &> /dev/null
