#!/bin/bash

curl "http://localhost:4741/campers" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
