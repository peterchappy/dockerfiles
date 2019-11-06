#!/usr/bin/env bash
set -eo pipefail

case $1 in
  run)
    its --ip=127.0.0.1
    sleep 1
    ;;
  *)
    exec "$@"
    ;;
esac