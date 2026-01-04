#!/bin/bash
set -euo pipefail

SYSTEM_PACKAGES="ghostty helix cargo npm"

STOW_PACKAGES="bash git vscode"

if [ $# -gt 0 ] && [ "$1" == "--force" ]; then
    git stow $STOW_PACKAGES --adopt
    git restore .

else
    git stow $STOW_PACKAGES

fi

echo "Successfully synced dotfiles"

echo "REMINDER:"
echo "still to install: $SYSTEM_PACKAGES"



