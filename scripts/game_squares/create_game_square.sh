#!/bin/bash

# GAME_ID=1 CELL_INDEX=1 VALUE=A TOKEN=BAhJIiVkMmQwYTY1Yjg3MzcyMDQwODE1NDI3YjA2MjIyNDVmYQY6BkVG--7af6df9a4b7720a1a78fe80caecfb7f27a581f53 sh scripts/game_squares/create_game_square.sh

curl "http://localhost:4741/game_squares" \
  --include \
  --request POST \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "game_square": {
      "game_id": "'"${GAME_ID}"'",
      "cell_index": "'"${CELL_INDEX}"'",
      "value": "'"${VALUE}"'"
    }
  }'

echo
