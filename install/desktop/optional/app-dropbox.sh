# Sync files across machines using https://dropbox.com
# Check if Dropbox is already installed
if ! command -v dropbox &> /dev/null; then
  echo "Dropbox is not installed. Installing..."
  sudo apt install -y nautilus-dropbox >/dev/null
else
  echo "Dropbox is already installed."
fi
