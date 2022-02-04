dnf upgrade --refresh

dnf install -y fedora-workstation-repositories

dnf install -y \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
  
dnf install -y \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf install curl htop wget atop vim lm_sensors ksensors  vlc lm_sensors ksensors dnf-plugins-core bash-completion git-all hwinfo mc jq flatpak  tlp tlp-rdw




dnf install -y gcc elfutils-libelf-devel kernel-devel akmod-acpi_call akmod-tp_smapi

dnf config-manager --set-enabled google-chrome
dnf install -y google-chrome-stable

dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel

dnf install -y lame\* --exclude=lame-devel

dnf group upgrade --with-optional Multimedia

systemctl enable tlp

tlp-stat -b

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub com.spotify.Client
flatpak install flathub com.slack.Slack
