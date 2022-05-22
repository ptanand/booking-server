#!/bin/sh

# sh curl-scripts/booking/booking_show.sh  

TOKEN="7abb72ec1c708a85710faebeed06a5d3"
ID="628ab72c33f0f923525e83ef"
API="http://localhost:4741"
URL_PATH="/booking"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo