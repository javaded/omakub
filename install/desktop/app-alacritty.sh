# Alacritty is a GPU-powered and highly extensible terminal. See https://alacritty.org/
# Check if Alacritty is already installed
if ! command -v alacritty &> /dev/null; then
  echo "Alacritty is not installed. Installing..."
  sudo apt install -y alacritty
  mkdir -p ~/.config/alacritty
  cp ~/.local/share/omakub/configs/alacritty.toml ~/.config/alacritty/alacritty.toml
  cp ~/.local/share/omakub/themes/tokyo-night/alacritty.toml ~/.config/alacritty/theme.toml
  cp ~/.local/share/omakub/configs/alacritty/fonts/CaskaydiaMono.toml ~/.config/alacritty/font.toml
  cp ~/.local/share/omakub/configs/alacritty/font-size.toml ~/.config/alacritty/font-size.toml
else
  echo "Alacritty is already installed."
fi
