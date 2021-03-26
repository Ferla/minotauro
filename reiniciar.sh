#!/bin/bash
set -e

rm -f /minotauro/log/*.log
rm -f /minotauro/tmp/pids/*.pid

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"

#ruby /minotauro/script/server