# Check if LocalSend is already installed
if ! command -v localsend &> /dev/null; then
  echo "LocalSend is not installed. Installing..."
  cd /tmp
  LOCALSEND_VERSION=$(curl -s "https://api.github.com/repos/localsend/localsend/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
  wget -O localsend.deb "https://github.com/localsend/localsend/releases/latest/download/LocalSend-${LOCALSEND_VERSION}-linux-x86-64.deb"
  sudo apt install -y ./localsend.deb
  rm localsend.deb
  cd -
else
  echo "LocalSend is already installed."
fi
