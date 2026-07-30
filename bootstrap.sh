#!/usr/bin/env bash

set -e
set -o pipefail
set -u

echo "bootstrapping @cecobask dotfiles"

if ! xcode-select -p &>/dev/null; then
	xcode-select --install
	while ! xcode-select -p &>/dev/null; do
		echo "waiting for xcode command line tools to install"
		sleep 10
	done
	echo "installed xcode command line tools"
else
	echo "skipped installing xcode command line tools"
fi

curl -fsLS https://get.chezmoi.io | sh
bin/chezmoi init cecobask --apply --force --purge-binary && rmdir bin
