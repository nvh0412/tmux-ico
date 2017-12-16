#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/helpers.sh"

color_buying_pressure_default="#[fg=green]"
color_selling_pressure_default="#[fg=red]"

print_ico_prices() {
  reponse=$(curl $TMUX_TRADING_URL)
  echo ${reponse} | jq '.[0]'
}

main() {
  print_ico_prices
}

main
