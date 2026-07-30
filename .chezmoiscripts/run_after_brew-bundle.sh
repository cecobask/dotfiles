#!/usr/bin/env bash

set -e
set -o pipefail
set -u

brew bundle install --global --jobs=1
