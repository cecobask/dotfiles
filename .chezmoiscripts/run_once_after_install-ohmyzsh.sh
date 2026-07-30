#!/usr/bin/env bash

set -e
set -o pipefail
set -u

# shellcheck disable=SC1091
source "$HOME/.zshenv"

if [ ! -d "$ZSH" ]; then
	echo "installing ohmyzsh"
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)" "" \
		--unattended \
		--keep-zshrc
else
	echo "skipped installing ohmyzsh"
fi
