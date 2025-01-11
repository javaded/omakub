# Make video calls using https://zoom.us/
# Check if Zoom is already installed
if ! command -v zoom &> /dev/null; then
  echo "Zoom is not installed. Installing..."
  cd /tmp
  wget https://zoom.us/client/latest/zoom_amd64.deb
  sudo apt install -y ./zoom_amd64.deb
  rm zoom_amd64.deb
  cd -
else
  echo "Zoom is already installed."
fi
