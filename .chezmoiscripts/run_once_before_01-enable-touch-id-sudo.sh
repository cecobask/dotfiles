#!/usr/bin/env bash

set -e
set -o pipefail
set -u

sudo cp /etc/pam.d/sudo_local.template /etc/pam.d/sudo_local
sudo sed -i '' '/^[[:space:]]*#.*pam_tid\.so/s/^[[:space:]]*#//' /etc/pam.d/sudo_local
echo "enabled touch id for sudo"
