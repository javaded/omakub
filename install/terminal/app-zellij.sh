# Check if zellij is already installed
if ! command -v zellij &> /dev/null; then
    echo "Zellij is not installed. Installing..."
    cd /tmp
    wget -O zellij.tar.gz "https://github.com/zellij-org/zellij/releases/latest/download/zellij-x86_64-unknown-linux-musl.tar.gz"
    tar -xf zellij.tar.gz zellij
    sudo install zellij /usr/local/bin
    rm zellij.tar.gz zellij
cd -
else
    echo "Zellij is already installed."
fi


mkdir -p ~/.config/zellij/themes
[ ! -f "$HOME/.config/zellij/config.kdl" ] && cp ~/.local/share/omakub/configs/zellij.kdl ~/.config/zellij/config.kdl
cp ~/.local/share/omakub/themes/tokyo-night/zellij.kdl ~/.config/zellij/themes/tokyo-night.kdl
