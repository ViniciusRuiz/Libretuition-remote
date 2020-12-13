sudo apt update
sudo apt-get install --assume-yes wget

wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb

sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken


sudo DEBIAN_FRONTEND=noninteractive \
    apt install --assume-yes cinnamon-core desktop-base

sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/cinnamon-session-cinnamon2d" > /etc/chrome-remote-desktop-session'

sudo systemctl disable lightdm.service

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken

sudo usermod -a -G chrome-remote-desktop $USER

echo Now restart the VM and goto https://remotedesktop.google.com/headless where you can get the remote command
