#!/bin/bash

# sh curl-scripts/booking/booking_update.sh  


ID="628ab72c33f0f923525e83ef"
NAME="Gatchpoor"
TITLE="Monday"
DESCRIPTION="service"
DATE="2022-06-03"
TOKEN="7abb72ec1c708a85710faebeed06a5d3"
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
      "title": "'"${TITLE}"'",
      "description": "'"${DESCRIPTION}"'",
      "date": "'"${DATE}"'"
    }
  }'

echo