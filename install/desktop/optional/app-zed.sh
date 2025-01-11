# Check if Zed is already installed
if ! command -v zed &> /dev/null; then
  echo "Zed is not installed. Installing..."
  curl https://zed.dev/install.sh | sh
else
  echo "Zed is already installed."
fi
