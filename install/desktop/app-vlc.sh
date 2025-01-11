# Check if VLC is already installed
if ! command -v vlc &> /dev/null; then
  echo "VLC is not installed. Installing..."
  sudo apt install -y vlc
else
  echo "VLC is already installed."
fi
