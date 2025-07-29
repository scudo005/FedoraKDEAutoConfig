sudo -s
dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
dnf update -y
dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/39/winehq.repo
dnf install winehq-stable neofetch -y
# dnf install vlc python-vlc
# dnf remove dragon elisa-player
dnf autoremove -y
exit
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak update -y
# flatpak install com.vscodium.codium com.github.Eloston.UngoogledChromium com.valvesoftware.Steam -y