#!/usr/bin/env bash

set -e
set -o pipefail
set -u

curl -fsLS https://get.chezmoi.io | sh
bin/chezmoi init cecobask --apply --force --purge-binary && rmdir bin
