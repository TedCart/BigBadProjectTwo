#!/bin/bash

curl "http://localhost:4741/sign-out" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"

echo

# TOKEN=BAhJIiUyMmY0OTI0YmI0YWQwMjM5OTQyMzA0ZDM5ZDhhYzJmNwY6BkVG--7a97d9048b7d8d8ebae7dabe1308650d9075a5f9 sh scripts/users/sign_out.sh
