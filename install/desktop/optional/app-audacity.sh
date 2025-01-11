# Check if Audacity is already installed
if ! command -v audacity &> /dev/null; then
  echo "Audacity is not installed. Installing..."
  flatpak install -y flathub org.audacityteam.Audacity
else
  echo "Audacity is already installed."
fi
