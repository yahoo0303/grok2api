#!/usr/bin/env sh
set -eu

sh /app/scripts/init_storage.sh

if [ "$#" -eq 0 ]; then
  exec python main.py --host 0.0.0.0 --port "${PORT:-10000}"
fi

exec "$@"
