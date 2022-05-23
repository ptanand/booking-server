#!/bin/bash

# sh curl-scripts/booking/booking_update.sh  


ID="628ba81a956a630b0785d59e"
NAME="Dass"
DATE="2022-06-03"
PLEDGE="Allo"
TOKEN="d6613496e620d827c8b8096c3956bb2a"
API="http://localhost:4741"
URL_PATH="/booking"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
      "booking": {
      "name": "'"${NAME}"'",
      "date": "'"${DATE}"'",
      "pledge": "'"${PLEDGE}"'"
      
    }
  }'

echo