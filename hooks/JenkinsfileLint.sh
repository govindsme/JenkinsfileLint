#!/usr/bin/env bash
set -eu
if [ -x "$(command -v docker)" ]; then
    if [[ $(uname -m) == "arm64" ]]; then
        echo "arm64"
        docker run --rm --platform linux/amd64 -u "$(id -u):$(id -g)" -w=/tmp -v "$PWD":/tmp nvuillam/npm-groovy-lint "$@" --failon error --verbose
    else
        echo "amd64"
        docker run --rm -u "$(id -u):$(id -g)" -w=/tmp -v "$PWD":/tmp nvuillam/npm-groovy-lint "$@" --failon error --verbose
    fi
    exit 0
else
  echo "Docker is not installed or running"
  exit 1
fi
