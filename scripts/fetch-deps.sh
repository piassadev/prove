#!/bin/bash
set -e

if [ -z "$DEPS_URL" ]; then
  echo "No external dependency URL provided. Skipping."
  exit 0
fi

echo "Downloading external dependencies from $DEPS_URL"

curl -L "$DEPS_URL" -o /tmp/ext.tar.gz
mkdir -p external
tar -xzf /tmp/ext.tar.gz -C external

echo "External dependencies added."
