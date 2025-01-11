# Obsidian is a multi-platform note taking application. See https://obsidian.md
# Check if Obsidian is already installed
if ! command -v obsidian &> /dev/null; then
  echo "Obsidian is not installed. Installing..."
  flatpak install -y flathub md.obsidian.Obsidian
else
  echo "Obsidian is already installed."
fi
