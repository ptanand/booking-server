#!/bin/bash

#  sh curl-scripts/auth_booking/booking_change_password.sh 

OLDPW="12"
NEWPW="1"
TOKEN="7abb72ec1c708a85710faebeed06a5d3"

API="http://localhost:4741"
URL_PATH="/change-password"

curl "${API}${URL_PATH}/" \
  --include \
  --request PATCH \
  --header "Authorization: Bearer ${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo