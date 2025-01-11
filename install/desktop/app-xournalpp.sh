# Check if Xournal++ is already installed
if ! command -v xournalpp &> /dev/null; then
  echo "Xournal++ is not installed. Installing..."
  sudo apt install -y xournalpp
else
  echo "Xournal++ is already installed."
fi
