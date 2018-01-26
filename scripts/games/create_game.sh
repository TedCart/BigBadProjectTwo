#!/bin/bash

# TOKEN=XxX sh scripts/games/create_game.sh

curl "http://localhost:4741/games" \
  --include \
  --request POST \
  --header "Authorization: Token token=$TOKEN"

echo
