#!/bin/bash
echo "SYSTEM TYPE: main/test (default: test)"
read -r system_type
if [ -z "$system_type" ] || [ "$system_type" != "main" ]; then
  system_type="test"
fi
echo "SYSTEM TYPE: $system_type"

sudo pacman -S binutils
sudo pacman -S coreutils
sudo pacman -S dateutils
sudo pacman -S diffutils
sudo pacman -S elfutils
sudo pacman -S findutils
sudo pacman -S inetutils
sudo pacman -S iputils
sudo pacman -S moreutils
sudo pacman -S plotutils
sudo pacman -S psutils
sudo pacman -S sysfsutils
sudo pacman -S usbutils

sudo pacman -S flatpak

sudo pacman -S adobe-source-code-pro-fonts
sudo pacman -S adobe-source-sans-fonts
sudo pacman -S adobe-source-serif-fonts
sudo pacman -S cantarell-fonts
sudo pacman -S fontconfig
sudo pacman -S freetype2
sudo pacman -S gnu-free-fonts
sudo pacman -S libertinus-font
sudo pacman -S noto-fonts
sudo pacman -S noto-fonts-cjk
sudo pacman -S noto-fonts-emoji
sudo pacman -S noto-fonts-extra
sudo pacman -S otf-cascadia-code
sudo pacman -S otf-fantasque-sans-mono
sudo pacman -S otf-font-awesome
sudo pacman -S otf-hermit
sudo pacman -S pango
sudo pacman -S terminus-font
sudo pacman -S ttc-iosevka
sudo pacman -S ttf-anonymous-pro
sudo pacman -S ttf-carlito
sudo pacman -S ttf-croscore
sudo pacman -S ttf-dejavu
sudo pacman -S ttf-droid
sudo pacman -S ttf-fira-code
sudo pacman -S ttf-jetbrains-mono
sudo pacman -S ttf-liberation
sudo pacman -S ttf-monoid
sudo pacman -S ttf-nerd-fonts-symbols
sudo pacman -S ttf-opensans
sudo pacman -S ttf-roboto
sudo pacman -S ttf-roboto-mono

sudo pacman -S alsa-firmware
sudo pacman -S alsa-lib
sudo pacman -S alsa-plugins
sudo pacman -S alsa-tools
sudo pacman -S alsa-utils

sudo pacman -S a52dec
sudo pacman -S celt
sudo pacman -S faac
sudo pacman -S faad2
sudo pacman -S ffmpeg
sudo pacman -S flac
sudo pacman -S lame
sudo pacman -S libao
sudo pacman -S libdca
sudo pacman -S libdv
sudo pacman -S libmad
sudo pacman -S libmp4v2
sudo pacman -S libmpcdec
sudo pacman -S libmpeg2
sudo pacman -S libogg
sudo pacman -S libtheora
sudo pacman -S libvorbis
sudo pacman -S libxv
sudo pacman -S openal
sudo pacman -S opencore-amr
sudo pacman -S opus
sudo pacman -S portaudio
sudo pacman -S rtmidi
sudo pacman -S schroedinger
sudo pacman -S sof-firmware
sudo pacman -S speex
sudo pacman -S wavpack
sudo pacman -S x264
sudo pacman -S xvidcore

sudo pacman -S bluez
sudo pacman -S bluez-cups
sudo pacman -S bluez-utils

sudo systemctl start  bluetooth.service
sudo systemctl enable bluetooth.service

sudo pacman -S cups
sudo pacman -S cups-pdf
sudo pacman -S cups-pk-helper
sudo pacman -S gutenprint
sudo pacman -S pappl
sudo pacman -S print-manager
sudo pacman -S skanlite
sudo pacman -S system-config-printer

sudo systemctl start  cups.service
sudo systemctl enable cups.service

sudo pacman -S foomatic-db
sudo pacman -S foomatic-db-engine
sudo pacman -S foomatic-db-gutenprint-ppds
sudo pacman -S foomatic-db-nonfree
sudo pacman -S foomatic-db-nonfree-ppds
sudo pacman -S foomatic-db-ppds

if [ "$system_type" = "test" ]; then
  sudo pacman -S xf86-video-fbdev # for QEMU/KVM
else
  sudo pacman -S nvidia-lts
  sudo pacman -S nvidia-settings
  sudo pacman -S nvidia-utils
  sudo pacman -S opencl-nvidia
fi

if [ "$system_type" = "main" ]; then
  sudo pacman -S cuda
  sudo pacman -S cuda-tools
fi

sudo pacman -S gst-editing-services
sudo pacman -S gst-libav
sudo pacman -S gst-plugin-gtk
sudo pacman -S gst-plugin-opencv
sudo pacman -S gst-plugin-pipewire
sudo pacman -S gst-plugin-qmlgl
sudo pacman -S gst-plugin-wpe
sudo pacman -S gst-plugins-bad
sudo pacman -S gst-plugins-bad-libs
sudo pacman -S gst-plugins-base
sudo pacman -S gst-plugins-base-libs
sudo pacman -S gst-plugins-espeak
sudo pacman -S gst-plugins-good
sudo pacman -S gst-plugins-ugly
sudo pacman -S gstreamer
sudo pacman -S gstreamermm

sudo pacman -S gvfs
sudo pacman -S gvfs-afc
sudo pacman -S gvfs-goa
sudo pacman -S gvfs-google
sudo pacman -S gvfs-gphoto2
sudo pacman -S gvfs-mtp
sudo pacman -S gvfs-nfs
sudo pacman -S gvfs-smb

sudo pacman -S libinput
sudo pacman -S xf86-input-libinput
sudo pacman -S xf86-input-synaptics

sudo pacman -S ocl-icd
sudo pacman -S opencl-clhpp
sudo pacman -S opencl-headers
sudo pacman -S opencl-mesa
sudo pacman -S pocl

sudo pacman -S pipewire
sudo pacman -S pipewire-alsa
sudo pacman -S pipewire-jack
sudo pacman -S pipewire-media-session
sudo pacman -S pipewire-pulse

sudo pacman -S vulkan-extra-layers
sudo pacman -S vulkan-extra-tools
sudo pacman -S vulkan-headers
sudo pacman -S vulkan-icd-loader
sudo pacman -S vulkan-mesa-layers
sudo pacman -S vulkan-tools
sudo pacman -S vulkan-validation-layers

sudo pacman -S xorg
sudo pacman -S xorg-apps
sudo pacman -S xorg-font-util
sudo pacman -S xorg-fonts-100dpi
sudo pacman -S xorg-fonts-75dpi
sudo pacman -S xorg-fonts-cyrillic
sudo pacman -S xorg-fonts-encodings
sudo pacman -S xorg-fonts-misc
sudo pacman -S xorg-fonts-type1
sudo pacman -S xorg-server
sudo pacman -S xorg-server-devel
sudo pacman -S xorg-setxkbmap
sudo pacman -S xorg-xclipboard
sudo pacman -S xorg-xdm
sudo pacman -S xorg-xinit
sudo pacman -S xorg-xman
sudo pacman -S xorg-xmodmap
sudo pacman -S xorg-xrandr
sudo pacman -S xorg-xwayland
sudo pacman -S xsettingsd

sudo pacman -S xcb-imdkit
sudo pacman -S xcb-proto
sudo pacman -S xcb-util
sudo pacman -S xcb-util-cursor
sudo pacman -S xcb-util-errors
sudo pacman -S xcb-util-image
sudo pacman -S xcb-util-keysyms
sudo pacman -S xcb-util-renderutil
sudo pacman -S xcb-util-wm
sudo pacman -S xcb-util-xrm

sudo pacman -S qt5-wayland
sudo pacman -S qt6-wayland
sudo pacman -S wayland
# sudo pacman -S plasma-wayland-session

sudo pacman -S cronie
sudo pacman -S packagekit-qt5
sudo pacman -S phonon-qt5-gstreamer

for i in {1..5}
do
  echo "=============================="
  echo "$i KDE Plasma installation ..."
  echo "=============================="
  sudo pacman -S plasma-meta
  sudo pacman -S plasma-integration
  sudo pacman -S kde-system-meta
done

sudo pacman -S dolphin
sudo pacman -S dolphin-plugins
sudo pacman -S elisa
sudo pacman -S kate
sudo pacman -S kcalc
sudo pacman -S kcolorchooser
sudo pacman -S kcron
sudo pacman -S kdeconnect
sudo pacman -S kfind
sudo pacman -S konsole
sudo pacman -S krunner
sudo pacman -S spectacle

sudo pacman -S sddm
sudo pacman -S sddm-kcm
sudo systemctl enable sddm.service

sudo pacman -S xdg-desktop-portal
sudo pacman -S xdg-desktop-portal-kde
sudo pacman -S xdg-user-dirs
sudo pacman -S xdg-utils
xdg-user-dirs-update

sudo pacman -S archlinux-wallpaper
sudo pacman -S breeze
sudo pacman -S breeze-grub
sudo pacman -S breeze-gtk
sudo pacman -S breeze-icons

sudo pacman -S tmux

sudo pacman -S ed

sudo pacman -S emacs

sudo pacman -S vi
sudo pacman -S vim
sudo pacman -S vim-spell-en
sudo pacman -S vim-spell-ru

sudo pacman -S qt5-3d
sudo pacman -S qt5-base
sudo pacman -S qt5-imageformats
sudo pacman -S qt5-tools

sudo pacman -S qt6-3d
sudo pacman -S qt6-base
sudo pacman -S qt6-imageformats
sudo pacman -S qt6-tools

sudo pacman -S curl

sudo pacman -S wget

sudo pacman -S xclip
sudo pacman -S xsel

sudo pacman -S groff
sudo pacman -S man-db
sudo pacman -S man-pages

{
  echo "Xft.antialias: true"
  echo "Xft.autohint:  false"
  echo "Xft.dpi:       96"
  echo "Xft.hinting:   true"
  echo "Xft.hintstyle: hintslight"
  echo "Xft.lcdfilter: lcddefault"
  echo "Xft.rgba:      rgb"
} > "$HOME"/.Xresources

{
  echo "xrdb -merge .Xresources"
  echo "export DESKTOP_SESSION=plasma"
  echo "exec startplasma-x11"
} > "$HOME"/.xinitrc

{
  echo "\$include /etc/inputrc"
  echo "set bell-style                        none"
  echo "set bind-tty-special-chars              on"
  echo "set blink-matching-paren                on"
  echo "set colored-stats                       on"
  echo "set completion-ignore-case              on"
  echo "set completion-prefix-display-length     5"
  echo "set completion-query-items              10"
  echo "set echo-control-characters            off"
  echo "set editing-mode                     emacs"
  echo "set enable-keypad                       on"
  echo "set expand-tilde                        on"
  echo "set horizontal-scroll-mode              on"
  echo "set input-meta                          on"
  echo "set mark-directories                    on"
  echo "set mark-modified-lines                off"
  echo "set mark-symlinked-directories          on"
  echo "set match-hidden-files                  on"
  echo "set output-meta                         on"
  echo "set show-all-if-ambiguous               on"
  echo "set show-all-if-unmodified              on"
  echo "set visible-stats                       on"
} > "$HOME"/.inputrc

{
  echo "if [ -z \"\${DISPLAY}\" ] && [ \"\${XDG_VTNR}\" -eq 1 ]"
  echo "then"
  echo "  exec startx"
  echo "fi"
} > "$HOME"/.profile

sudo pacman -S clamav
sudo systemctl stop clamav-freshclam.service
sudo freshclam

sudo systemctl start  clamav-daemon.service
sudo systemctl enable clamav-daemon.service

sudo systemctl start  clamav-freshclam.service
sudo systemctl enable clamav-freshclam.service

sudo pacman -S cockpit
sudo pacman -S cockpit-machines
sudo pacman -S cockpit-pcp

sudo systemctl start  cockpit.socket
sudo systemctl enable cockpit.socket

git config --global init.defaultBranch "main"
git config --global user.email         "lispgod@gmail.com"
git config --global user.name          "karlkorp"

mkdir -p "$HOME"/.fonts
mkdir -p "$HOME"/.icons
mkdir -p "$HOME"/.themes

sudo mkdir -p /opt/geant4

sudo systemctl enable fstrim.timer

sudo systemctl start  paccache.timer
sudo systemctl enable paccache.timer

sudo systemctl start  systemd-oomd.service
sudo systemctl enable systemd-oomd.service

sudo systemctl start  plocate-updatedb.timer
sudo systemctl enable plocate-updatedb.timer

mkdir -p "$HOME"/.config/nano
cp /etc/nanorc "$HOME"/.config/nano/nanorc
{
  echo ""
  echo "## User options ##"
  echo "set autoindent"
  echo "set constantshow"
  echo "set cutfromcursor"
  echo "set linenumbers"
  echo "set smarthome"
  echo "set tabsize 2"
  echo "set tabstospaces"
  echo "set unix"
  echo "include \"/usr/share/nano/*.nanorc\""
  echo "include \"/usr/share/nano-syntax-highlighting/*.nanorc\""
} >> "$HOME"/.config/nano/nanorc

if [ -d /game ]; then
  sudo chown "$USER":"$USER" /game
fi

if [ -d /data ]; then
  sudo chown "$USER":"$USER" /data

  mkdir -p /data/projects
  mkdir -p /data/qemu
  mkdir -p /data/torrents

  git clone https://gitlab.com/karlkorp/dotfiles.git /data/projects/dotfiles

  ln -fsv /data/projects/dotfiles/.bashrc    "$HOME"/.bashrc
  ln -fsv /data/projects/dotfiles/.emacs     "$HOME"/.emacs
  ln -fsv /data/projects/dotfiles/.emacs.org "$HOME"/.emacs.org
  ln -fsv /data/projects/dotfiles/.tmux.conf "$HOME"/.tmux.conf
  ln -fsv /data/projects/dotfiles/.vimrc     "$HOME"/.vimrc
else
  cp /tmp/dotfiles/.bashrc    "$HOME"
  cp /tmp/dotfiles/.emacs     "$HOME"
  cp /tmp/dotfiles/.emacs.org "$HOME"
  cp /tmp/dotfiles/.tmux.conf "$HOME"
  cp /tmp/dotfiles/.vimrc     "$HOME"
fi

echo "vm.swappiness=10" | sudo tee -a /etc/sysctl.d/99-swappiness.conf

echo     "Configuration was done!"
read -rp "Press 'enter' to reboot..."
sleep 5 && reboot
