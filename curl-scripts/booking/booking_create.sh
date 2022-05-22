#!/bin/bash

# sh curl-scripts/booking/booking_create.sh  

NAME="Gatchpoor"
TITLE="Sunday"
DATE="2022-05-22"
DESCRIPTION="service"
TOKEN="7abb72ec1c708a85710faebeed06a5d3"
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
      "title": "'"${TITLE}"'",
      "description": "'"${DESCRIPTION}"'",
      "date": "'"${DATE}"'"
    }
  }'

echo