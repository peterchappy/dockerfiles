#!/usr/bin/env bash
set -eo pipefail

case $1 in
  watch)
    elmstatic watch & cd _site && browser-sync start --server --files "." --no-ui  --reload-delay 500 --reload-debounce 500
    ;;
  *)
    exec "$@"
    ;;
esac