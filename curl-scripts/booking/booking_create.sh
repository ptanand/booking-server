#!/bin/bash

# sh curl-scripts/booking/booking_create.sh  

NAME="Dass"
DATE="2022-05-22"
PLEDGE="service"
TOKEN="d6613496e620d827c8b8096c3956bb2a"
API="http://localhost:4741"
URL_PATH="/booking"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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