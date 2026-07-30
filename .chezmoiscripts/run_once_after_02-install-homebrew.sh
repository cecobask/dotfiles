#!/usr/bin/env bash

set -e
set -o pipefail
set -u

if ! command -v brew >/dev/null 2>&1; then
	bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
	echo "skipped installing homebrew"
fi

# shellcheck disable=SC1091
source "$HOME/.zshenv"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew bundle install --global --jobs=1
