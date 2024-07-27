#!/usr/bin/env bash
# Use this script to test if a given TCP host/port are available

set -e

TIMEOUT=15
QUIET=0
HOST=$1
PORT=$2

if [[ -z "$HOST" || -z "$PORT" ]]; then
  echo "Usage: $0 host port"
  exit 1
fi

echo "Waiting for $HOST:$PORT to be available..."

for i in $(seq $TIMEOUT) ; do
  nc -z "$HOST" "$PORT" >/dev/null 2>&1 && break
  echo -n .
  sleep 1
done

echo "Done waiting for $HOST:$PORT."
