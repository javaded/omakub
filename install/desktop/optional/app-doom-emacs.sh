# Check if Doom Emacs is already installed
if ! command -v emacs &> /dev/null; then
  echo "Doom Emacs is not installed. Installing..."
  sudo apt install -y emacs
  git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
  ~/.config/emacs/bin/doom install
else
  echo "Doom Emacs is already installed."
fi
