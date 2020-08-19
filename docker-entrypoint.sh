#!/bin/sh

set -e

#
# Execute rails server on port 3000
#
if [ -f tmp/pids/server.pid ]; then
  rm -f tmp/pids/server.pid
fi

echo "Running server on http://localhost:3000"
exec "$@"

