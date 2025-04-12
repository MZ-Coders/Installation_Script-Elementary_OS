sudo apt update dist-upgrade

sudo apt install -y software-properties-common ubuntu-restricted-extras libavcodec-extra libdvd-pkg cheese obs-studio mpv build-essential timeshift synaptic libavcodec-extra ffmpeg
sudo -y ubuntu-drivers devices
sudo -y ubuntu-drivers autoinstall

# Google Chrome
sudo apt install libxss1 libappindicator1 libindicator7
## 1. downloading last stable package
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
## 2. installing package
sudo dpkg -i google-chrome-stable_current_amd64.deb
## 3. fixing broken dependencies
sudo apt install -f

# firefox
sudo apt-get install firefox
# TODO: download firefox developer edition

# Copyq
sudo add-apt-repository ppa:hluk/copyq
sudo apt update
sudo apt install copyq

# Synapse launcher
sudo apt install synapse

# Gnome system monitor
sudo apt install gnome-system-monitor
# Bleachbit
sudo apt install bleachbit
# Dconf
sudo apt install dconf

# Multiplank for many monitors
sudo apt-add-repository ppa:heathbar/multiplank
sudo apt-get update
sudo apt-get install multiplank
# Once installed, enable multiplank by issuing the following command:
multiplank -e
# And to disable:
# multiplank -d

sudo apt install nala
sudo nala fetch

sudo nala install -y gnome-shell-extension-manager stacer gdebi vlc htop neofetch bpytop clang cargo libc6-i386 libc6-x32 libu2f-udev samba-common-bin 
sudo nala install -y exfat-fuse default-jdk curl wget unrar linux-headers-$(uname -r) linux-headers-generic git gstreamer1.0-vaapi unzip ntfs-3g p7zip htop 
sudo nala install -y git gcc neofetch bpytop make curl bzip2 tar flatpak nvidia-driver-535

# Git setup
printf "Enter your git user name: \n"
read username
printf "Enter your git email: \n"
read email
git config --global user.name ${username}
git config --global user.email ${email}

# Docker
sudo nala install docker.io
sudo systemctl enable docker
sudo systemctl start docker

# Flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.spotify.Client
flatpak install flathub com.transmissionbt.Transmission
flatpak install flathub com.obsproject.Studio
https://flathub.org/apps/net.nokyan.Resources

# Elementary Tweak
sudo flatpak install flathub io.github.pantheon_tweaks.pantheon-tweaks
flatpak run io.github.pantheon_tweaks.pantheon-tweaks

# Preload, improves performance
sudo apt-get install preload

# Clean-up System Elementary
sudo apt purge epiphany-browser epiphany-browser-data #browser
sudo apt-get purge noise # Music
# sudo apt-get purge scratch-text-editor #text-editor
# sudo apt-get purge modemmanager # ni puta idea
# sudo apt-get purge pantheon-mail # email
sudo apt-get purge pantheon-terminal #terminal
# sudo apt-get purge audience
# sudo apt-get purge maya-calendar #calendar

sudo apt autoremove
sudo apt autoclean
