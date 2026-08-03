#!/usr/bin/env bash

set -e
set -o pipefail
set -u

chezmoi git -- remote set-url origin git@github.com:cecobask/dotfiles.git
