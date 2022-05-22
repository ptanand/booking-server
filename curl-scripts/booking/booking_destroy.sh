#!/bin/bash

# sh curl-scripts/booking/booking_destroy.sh  

ID=""
TOKEN=""
API="http://localhost:4741"
URL_PATH="/booking"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo