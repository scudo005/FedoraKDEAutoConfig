sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf update -y
sudo dnf install wine fastfetch vlc python pip py ImageMagick python-vlc gcc g++ make dotnet-sdk-9.0 dotnet-sdk-8.0 kdenlive gimp -y
sudo dnf remove dragon elisa-player -y
sudo dnf autoremove -y
IS_INTEL_HD_IGPU=$(lspci | grep "Intel Corporation HD")
IS_INTEL_UHD_IGPU=$(lspci | grep "Intel Corporation UHD")
if [[ $IS_INTEL_HD_IGPU == *"Intel Corporation HD"* || $IS_INTEL_UHD_IGPU == *"Intel Corporation UHD"* ]]; then
    sudo dnf install intel-media-driver -y
fi
unset IS_INTEL_HD_IGPU
unset IS_INTEL_UHD_IGPU
sudo dnf install ffmpeg -y --allowerasing # nonfree stuff like Intel QSV
# MiKTeX stuff
sudo rpm --import "https://miktex.org/download/key"
sudo curl -L -o /etc/yum.repos.d/miktex.repo https://miktex.org/download/fedora/41/miktex.repo
sudo dnf update -y
sudo dnf install miktex -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak update -y
flatpak install com.vscodium.codium io.github.ungoogled_software.ungoogled_chromium com.valvesoftware.Steam org.keepassxc.KeePassXC org.mozilla.Thunderbird fr.handbrake.ghb fr.handbrake.ghb org.signal.Signal -y
