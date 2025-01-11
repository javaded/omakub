# Check if Gnome Tweak Tool is already installed
if ! command -v gnome-tweak-tool &> /dev/null; then
  echo "Gnome Tweak Tool is not installed. Installing..."
  sudo apt install -y gnome-tweak-tool
else
  echo "Gnome Tweak Tool is already installed."
fi
