#!/bin/bash

# TOKEN=BAhJIiU1NmJiZTI0ZjIzYzYxMzNlOWE1ZWMxYmM4Y2M5MDBmNwY6BkVG--e203459ae70daf03bf63fe8fe118f0b5ad44fb59 sh scripts/games/create_game.sh

curl "http://localhost:4741/games" \
  --include \
  --request POST \
  --header "Authorization: Token token=$TOKEN"

echo
