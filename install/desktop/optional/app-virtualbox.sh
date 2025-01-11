# Virtualbox allows you to run VMs for other flavors of Linux or even Windows
# See https://ubuntu.com/tutorials/how-to-run-ubuntu-desktop-on-a-virtual-machine-using-virtualbox#1-overview
# for a guide on how to run Ubuntu inside it.
# Check if Virtualbox is already installed
if ! command -v VBoxManage &> /dev/null; then
  echo "Virtualbox is not installed. Installing..."
  sudo apt install -y virtualbox virtualbox-ext-pack
  sudo usermod -aG vboxusers ${USER}
else
  echo "Virtualbox is already installed."
fi
