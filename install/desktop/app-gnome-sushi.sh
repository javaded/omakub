# Gives you previews in the file manager when pressing space
# Check if Gnome Sushi is already installed
if ! command -v gnome-sushi &> /dev/null; then
  echo "Gnome Sushi is not installed. Installing..."
  sudo apt install -y gnome-sushi
else
  echo "Gnome Sushi is already installed."
fi

