#!/bin/bash

# ID=1 GAME_OVER=true TOKEN=BAhJIiVkMmQwYTY1Yjg3MzcyMDQwODE1NDI3YjA2MjIyNDVmYQY6BkVG--7af6df9a4b7720a1a78fe80caecfb7f27a581f53 sh scripts/games/update_game.sh

curl "http://localhost:4741/games/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "game": {
      "game_over": "'"${GAME_OVER}"'"
    }
  }'

echo
