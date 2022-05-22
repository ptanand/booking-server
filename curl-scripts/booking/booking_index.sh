#!/bin/sh

# sh curl-scripts/booking/booking_index.sh 

TOKEN="7abb72ec1c708a85710faebeed06a5d3"
API="http://localhost:4741"
URL_PATH="/booking"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo