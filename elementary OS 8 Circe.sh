sudo apt update dist-upgrade

sudo apt install -y ubuntu-restricted-extras libavcodec-extra libdvd-pkg cheese obs-studio mpv build-essential timeshift synaptic libavcodec-extra ffmpeg
sudo -y ubuntu-drivers devices
sudo -y ubuntu-drivers autoinstall

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

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

sudo nala install docker.io
sudo systemctl enable docker
sudo systemctl start docker

flatpak install flathub com.spotify.Client
flatpak install flathub com.transmissionbt.Transmission
flatpak install flathub com.obsproject.Studio
https://flathub.org/apps/net.nokyan.Resources

sudo flatpak install flathub io.github.pantheon_tweaks.pantheon-tweaks
flatpak run io.github.pantheon_tweaks.pantheon-tweaks

sudo apt-get autoremove
sudo apt clean
sudo apt autoclean
