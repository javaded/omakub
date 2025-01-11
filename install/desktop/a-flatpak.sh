# Check if flatpak is already installed
if ! command -v flatpak &> /dev/null; then
  sudo apt install -y flatpak
  sudo apt install -y gnome-software-plugin-flatpak
  sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
else
  echo "Flatpak is already installed."
fi
