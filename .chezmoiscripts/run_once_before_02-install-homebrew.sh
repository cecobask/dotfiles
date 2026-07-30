#!/usr/bin/env bash

set -e
set -o pipefail
set -u

if ! command -v brew >/dev/null 2>&1; then
	bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	eval "$(/opt/homebrew/bin/brew shellenv)"
else
	echo "skipped installing homebrew"
fi
