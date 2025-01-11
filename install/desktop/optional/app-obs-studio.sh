# OBS Studio is a screen recording application that allows you to capture both display and webcam in the same recording
# Check if OBS Studio is already installed
if ! command -v obs-studio &> /dev/null; then
  echo "OBS Studio is not installed. Installing..."
  sudo apt install -y obs-studio
else
  echo "OBS Studio is already installed."
fi

