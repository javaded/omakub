# FIXME: Get this out of snap
# Check if Pinta is already installed
if ! command -v pinta &> /dev/null; then
  echo "Pinta is not installed. Installing..."
  sudo snap install pinta
else
  echo "Pinta is already installed."
fi

