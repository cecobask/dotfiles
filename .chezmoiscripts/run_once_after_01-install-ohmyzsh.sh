#!/usr/bin/env bash

set -e
set -o pipefail
set -u

if [ ! -d "$ZSH" ]; then
	# shellcheck disable=SC1091
	source "$HOME/.zshenv"
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)" "" --unattended --keep-zshrc
else
	echo "skipped installing ohmyzsh"
fi
