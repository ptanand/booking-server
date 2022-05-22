#!/bin/bash

#  sh curl-scripts/auth_booking/booking_signout.sh 

TOKEN=""
API="http://localhost:4741"
URL_PATH="/sign-out"

curl "${API}${URL_PATH}/" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo