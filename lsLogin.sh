#!/bin/bash
TOKEN="820214276:AAFYowPFC6zHK3U0jPsX3DVD4QkRVLgP_OE" 
CHAT_ID=-368558878
MESSAGE1="User "
MESSAGE2=" Logged in"
MESSAGE3=${SSH_CLIENT%% *}
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$MESSAGE1$USER$MESSAGE2 $MESSAGE3"  &> /dev/null
trap /var/scripts/lsLogoffdrop.sh EXIT
