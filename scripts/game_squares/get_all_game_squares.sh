#!/bin/bash

# sh scripts/game_squares/get_all_game_squares.sh

curl "http://localhost:4741/game_squares/" \
  --include \
  --request GET

echo
