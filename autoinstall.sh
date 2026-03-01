#!/usr/bin/env sh

set -e

INSTALL_DIR="/usr/local/bin"
BINARY="gt"
REPO="ayoubxdev/gt"

TMP_DIR="$(mktemp -d)"

echo "Downloading gt..."

curl -fsSL 
"https://raw.githubusercontent.com/$REPO/main/$BINARY" 
-o "$TMP_DIR/$BINARY"

chmod +x "$TMP_DIR/$BINARY"

echo "Installing..."

sudo mv "$TMP_DIR/$BINARY" "$INSTALL_DIR/$BINARY"

rm -rf "$TMP_DIR"

echo ""
echo "✅ gt installed!"
echo "Run:"
echo "  gt"
