# Check if RubyMine is already installed
if ! command -v rubymine &> /dev/null; then
  echo "RubyMine is not installed. Installing..."
  sudo snap install rubymine --classic
else
  echo "RubyMine is already installed."
fi
