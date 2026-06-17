#!/usr/bin/env bash
set -e

BINARY="search"
DIR="~/.local/bin"
GITHUB="https://github.com/cli-search/releases/latest/download/$BINARY"
echo "Downloading and Installing..."
mkdir -p ~/.local/bin
curl -L $GITHUB -o "$DIR/$BINARY"
chmod +x "$DIR/$BINARY"
echo "Installed $BINARY tool in $DIR/$BINARY ....."
