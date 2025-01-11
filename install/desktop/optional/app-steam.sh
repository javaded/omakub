# Play games from https://store.steampowered.com/
# Check if Steam is already installed
if ! command -v steam &> /dev/null; then
  echo "Steam is not installed. Installing..."
  cd /tmp
  wget https://cdn.akamai.steamstatic.com/client/installer/steam.deb
  sudo apt install -y ./steam.deb
  rm steam.deb
  cd -
else
  echo "Steam is already installed."
fi
