# Provides a system clipboard interface for Neovim under Wayland
# Check if wl-clipboard is already installed
if ! command -v wl-paste &> /dev/null; then
  echo "wl-clipboard is not installed. Installing..."
  sudo apt install wl-clipboard
else
  echo "wl-clipboard is already installed."
fi
