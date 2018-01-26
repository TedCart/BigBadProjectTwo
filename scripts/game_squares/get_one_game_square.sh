#!/bin/bash

# ID=1 sh scripts/game_squares/get_one_game_square.sh

curl "http://localhost:4741/game_squares/${ID}" \
  --include \
  --request GET

echo
