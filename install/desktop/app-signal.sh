# Check if Signal is already installed
if ! command -v signal-desktop &> /dev/null; then
  echo "Signal is not installed. Installing..."
  wget -qO- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor >signal-desktop-keyring.gpg
  cat signal-desktop-keyring.gpg | sudo tee /usr/share/keyrings/signal-desktop-keyring.gpg >/dev/null
  echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |
  sudo tee /etc/apt/sources.list.d/signal-xenial.list
  rm signal-desktop-keyring.gpg
  sudo apt update
  sudo apt install -y signal-desktop
else
  echo "Signal is already installed."
fi
