sudo apt update dist-upgrade

sudo apt install -y ubuntu-restricted-extras libavcodec-extra libdvd-pkg cheese obs-studio mpv
sudo -y ubuntu-drivers devices

sudo flatpak install flathub io.github.pantheon_tweaks.pantheon-tweaks
flatpak run io.github.pantheon_tweaks.pantheon-tweaks

sudo apt install synaptic -y
sudo apt install -y gdebi

sudo ubuntu-drivers autoinstall

sudo apt install -y timeshift

sudo apt install build-essential git curl -y

sudo apt install nala
sudo nala fetch

sudo nala install gnome-shell-extension-manager stacer gdebi vlc htop neofetch bpytop clang cargo libc6-i386 libc6-x32 libu2f-udev samba-common-bin exfat-fuse default-jdk curl wget unrar linux-headers-$(uname -r) linux-headers-generic git gstreamer1.0-vaapi unzip ntfs-3g p7zip htop neofetch bpytop git gcc make curl bzip2 tar chromium-browser flatpak nvidia-driver-535

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

sudo nala install docker.io
sudo systemctl enable docker
sudo systemctl start docker

flatpak install flathub com.spotify.Client
flatpak install flathub com.transmissionbt.Transmission
flatpak install flathub com.obsproject.Studio
https://flathub.org/apps/net.nokyan.Resources

sudo apt-get autoremove
sudo apt clean
sudo apt autoclean
