#!/usr/bin/env bash
set -e

BINARY="search"
DIR="$HOME/.local/bin"
REPO="rahulshingala111/cli-search"
URL="https://github.com/$REPO/releases/latest/download/$BINARY"
echo "Installing $BINARY..."
mkdir -p "$DIR"
curl -L "$URL" -o "$DIR/$BINARY"
chmod +x "$DIR/$BINARY"
echo "Installed at $DIR/$BINARY"
