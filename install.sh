#!/bin/bash
set -euo pipefail

SYSTEM_PACKAGES="ghostty helix cargo npm"

STOW_PACKAGES="bash git vscode"

if [ $# -gt 0 ] && [ "$1" == "--force" ]; then
    stow $STOW_PACKAGES --adopt
    git restore .

else
    stow $STOW_PACKAGES

fi

echo "Successfully synced dotfiles"

echo "REMINDER:"
echo "still to install: $SYSTEM_PACKAGES"



