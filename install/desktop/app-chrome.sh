# Browse the web with the most popular browser. See https://www.google.com/chrome/

# Check if Chrome is already installed
if ! command -v google-chrome &> /dev/null; then
  echo "Chrome is not installed. Installing..."
  cd /tmp
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  sudo apt install -y ./google-chrome-stable_current_amd64.deb
  rm google-chrome-stable_current_amd64.deb
  xdg-settings set default-web-browser google-chrome.desktop
  cd -
else
  echo "Chrome is already installed."
fi

