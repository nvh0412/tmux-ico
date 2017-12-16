#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/scripts/helpers.sh"

update_tmux_option() {
  local option = "$1"
}

main() {
  update_tmux_option
}

main
