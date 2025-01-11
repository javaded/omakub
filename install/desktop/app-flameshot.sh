# Flameshot is a nice step-up over the default Gnome screenshot tool
# Check if Flameshot is already installed
if ! command -v flameshot &> /dev/null; then
  echo "Flameshot is not installed. Installing..."
  sudo apt install -y flameshot
else
  echo "Flameshot is already installed."
fi
