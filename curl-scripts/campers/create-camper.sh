#!/bin/bash

curl "http://localhost:4741/campers" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "camper": {
      "first_name": "'"${FIRST}"'",
      "last_name": "'"${LAST}"'",
      "allergies": "'"${ALLERGIES}"'",
      "dob": "'"${DOB}"'",
      "camp_session": "'"${SESSION}"'",
      "parent_name": "'"${PARENT}"'",
      "parent_email": "'"${EMAIL}"'",
      "parent_phone": "'"${PHONE}"'"
    }
  }'

echo
