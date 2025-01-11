# Check if lazydocker is already installed
if ! command -v lazydocker &> /dev/null; then
    echo "Lazydocker is not installed. Installing..."
    cd /tmp
    LAZYDOCKER_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazydocker/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
    curl -sLo lazydocker.tar.gz "https://github.com/jesseduffield/lazydocker/releases/latest/download/lazydocker_${LAZYDOCKER_VERSION}_Linux_x86_64.tar.gz"
    tar -xf lazydocker.tar.gz lazydocker
    sudo install lazydocker /usr/local/bin
    rm lazydocker.tar.gz lazydocker
    cd -
else
  echo "Lazydocker is already installed."
fi