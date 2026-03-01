#!/usr/bin/env sh

set -e

BINARY="gt"
INSTALL_DIR="/usr/local/bin"

echo "Installing $BINARY..."

# Check binary exists

if [ ! -f "$BINARY" ]; then
echo "Error: $BINARY not found in current directory."
exit 1
fi

# Make executable

chmod +x "$BINARY"

# Move to system path

sudo mv "$BINARY" "$INSTALL_DIR/$BINARY"

echo ""
echo "✅ Installation complete!"
echo "You can now run:"
echo "  gt"
