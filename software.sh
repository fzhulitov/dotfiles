#!/bin/bash
sudo pacman -S rustup
rustup default stable

rustup component add rls
rustup component add rust-analysis
rustup component add rust-src
cargo install cargo-edit

git clone https://aur.archlinux.org/paru.git
cd paru || return
makepkg -si
cd .. && rm -rf paru/
paru -c && paru -Sc

sudo pacman -S ack

sudo pacman -S arj
sudo pacman -S ark
sudo pacman -S bzip2
sudo pacman -S cpio
sudo pacman -S gzip
sudo pacman -S lhasa
sudo pacman -S libarchive
sudo pacman -S lrzip
sudo pacman -S lz4
sudo pacman -S lzip
sudo pacman -S lzop
sudo pacman -S p7zip
sudo pacman -S pigz
sudo pacman -S tar
sudo pacman -S unace
sudo pacman -S unarchiver
sudo pacman -S unarj
sudo pacman -S unrar
sudo pacman -S unzip
sudo pacman -S xz
sudo pacman -S zip
sudo pacman -S zlib
sudo pacman -S zstd

sudo pacman -S bat

sudo pacman -S bleachbit

sudo pacman -S exa

sudo pacman -S fd

sudo pacman -S fdupes

sudo pacman -S fzf

sudo pacman -S gawk

sudo pacman -S grep

sudo pacman -S gnupg

sudo pacman -S sed

sudo pacman -S htop
sudo pacman -S lsof

sudo pacman -S less

sudo pacman -S libvterm

sudo pacman -S mc

sudo pacman -S catimg
sudo pacman -S chafa
sudo pacman -S neofetch

sudo pacman -S jdk-openjdk
sudo pacman -S jre-openjdk
sudo pacman -S jre-openjdk-headless
sudo pacman -S openjdk-src

sudo pacman -S bridge-utils
sudo pacman -S dmidecode
sudo pacman -S dnsmasq
sudo pacman -S edk2-ovmf
sudo pacman -S gettext
sudo pacman -S libvirt
sudo pacman -S libvirt-storage-gluster
sudo pacman -S libvirt-storage-iscsi-direct
sudo pacman -S libvirt-storage-rbd
sudo pacman -S lvm2
sudo pacman -S open-iscsi
sudo pacman -S openbsd-netcat
sudo pacman -S qemu
sudo pacman -S qemu-arch-extra
sudo pacman -S qemu-block-gluster
sudo pacman -S qemu-block-iscsi
sudo pacman -S qemu-block-rbd
sudo pacman -S qemu-guest-agent
sudo pacman -S radvd
sudo pacman -S samba
sudo pacman -S spice
sudo pacman -S vde2
sudo pacman -S virt-manager
sudo pacman -S virt-viewer

sudo pacman -S ripgrep

sudo pacman -S rsync

sudo pacman -S screenkey
sudo pacman -S slop

paru -S timeshift

sudo pacman -S tree

sudo pacman -S postgresql

sudo pacman -S sqlite

sudo pacman -S unixodbc

sudo pacman -S asio

sudo pacman -S autoconf

sudo pacman -S automake

sudo pacman -S bcc
sudo pacman -S bcc-tools
sudo pacman -S bpf
sudo pacman -S bpftrace
sudo pacman -S python-bcc

sudo pacman -S boost

sudo pacman -S botan

sudo pacman -S ccache

sudo pacman -S cimg

sudo pacman -S cmake
sudo pacman -S extra-cmake-modules

sudo pacman -S bison
sudo pacman -S byacc
sudo pacman -S flex

sudo pacman -S cppcheck

sudo pacman -S crypto++

sudo pacman -S ctags

sudo pacman -S distcc

sudo pacman -S doxygen

sudo pacman -S fftw

sudo pacman -S fmt

sudo pacman -S fpc
sudo pacman -S fpc-src

sudo pacman -S gcc
sudo pacman -S gcc-fortran

sudo pacman -S gdb

sudo pacman -S make

sudo pacman -S global

sudo pacman -S poke

sudo pacman -S time

sudo pacman -S benchmark

sudo pacman -S gtest

sudo pacman -S gperftools

sudo pacman -S graphviz

sudo pacman -S djvulibre
sudo pacman -S gd
sudo pacman -S jasper
sudo pacman -S libheif
sudo pacman -S libjpeg-turbo
sudo pacman -S libpng
sudo pacman -S libraw
sudo pacman -S librsvg
sudo pacman -S libtiff
sudo pacman -S libtiff4
sudo pacman -S libvips
sudo pacman -S libwebp
sudo pacman -S libwmf
sudo pacman -S openexr
sudo pacman -S openimagedenoise
sudo pacman -S openimageio
sudo pacman -S openjpeg2

sudo pacman -S jemalloc

sudo pacman -S jsoncpp

sudo pacman -S libpqxx

sudo pacman -S libuv

paru -S chez-scheme

sudo pacman -S clojure
sudo pacman -S leiningen
paru        -S clojure-lsp-bin

sudo pacman -S racket

sudo pacman -S guile

sudo pacman -S sbcl

sudo pacman -S llvm

sudo pacman -S clang

sudo pacman -S libc++

sudo pacman -S lld

sudo pacman -S lldb

sudo pacman -S openmp

sudo pacman -S polly

sudo pacman -S meson

sudo pacman -S aarch64-linux-gnu-binutils
sudo pacman -S aarch64-linux-gnu-gcc
sudo pacman -S aarch64-linux-gnu-gdb
sudo pacman -S aarch64-linux-gnu-glibc
sudo pacman -S aarch64-linux-gnu-linux-api-headers
sudo pacman -S arm-none-eabi-binutils
sudo pacman -S arm-none-eabi-gcc
sudo pacman -S arm-none-eabi-gdb
sudo pacman -S arm-none-eabi-newlib
sudo pacman -S libopencm3

sudo pacman -S avr-binutils
sudo pacman -S avr-gcc
sudo pacman -S avr-gdb
sudo pacman -S avr-libc
sudo pacman -S avrdude

sudo pacman -S i2c-tools

sudo pacman -S openocd

sudo pacman -S gpsim
sudo pacman -S gputils
sudo pacman -S sdcc

sudo pacman -S riscv32-elf-binutils
sudo pacman -S riscv32-elf-gdb
sudo pacman -S riscv32-elf-newlib
sudo pacman -S riscv64-elf-binutils
sudo pacman -S riscv64-elf-gcc
sudo pacman -S riscv64-elf-gdb
sudo pacman -S riscv64-elf-newlib
sudo pacman -S riscv64-linux-gnu-binutils
sudo pacman -S riscv64-linux-gnu-gcc
sudo pacman -S riscv64-linux-gnu-gdb
sudo pacman -S riscv64-linux-gnu-glibc
sudo pacman -S riscv64-linux-gnu-linux-api-headers

sudo pacman -S stlink

sudo pacman -S urjtag

sudo pacman -S nasm

sudo pacman -S ncurses

sudo pacman -S ninja

sudo pacman -S nlohmann-json

sudo pacman -S ocaml

sudo pacman -S opam
opam init                      -y
opam install base              -y
opam install batteries         -y
opam install containers        -y
opam install containers-data   -y
opam install containers-thread -y
opam install core              -y
opam install dune              -y
opam install lsp               -y
opam install ocaml-lsp-server  -y
opam install ocamlformat       -y
opam install ounit2            -y
opam install tuareg            -y
opam install utop              -y
{
  echo "Sys.interactive := false;;"
  echo "#use \"topfind\";;"
  echo "#thread;;"
  echo "#require \"core.top\";;"
  echo "#require \"core.syntax\";;"
} > "$HOME"/.ocamlinit
eval "$(opam env)"

sudo pacman -S tbb

sudo pacman -S opencv
sudo pacman -S opencv-samples

sudo pacman -S freeglut
sudo pacman -S glew
sudo pacman -S glfw-x11
sudo pacman -S glm
sudo pacman -S glslang
sudo pacman -S glu
sudo pacman -S libx11
sudo pacman -S libxext
sudo pacman -S libxft
sudo pacman -S libxmu
sudo pacman -S libxpm
sudo pacman -S mesa
sudo pacman -S ogre
sudo pacman -S virtualgl

sudo pacman -S openmpi

sudo pacman -S perf

sudo pacman -S poco

sudo pacman -S python
sudo pacman -S python-virtualenv

sudo pacman -S qbs
sudo pacman -S qtcreator

sudo pacman -S sdl2
sudo pacman -S sdl2_gfx
sudo pacman -S sdl2_image
sudo pacman -S sdl2_mixer
sudo pacman -S sdl2_net
sudo pacman -S sdl2_ttf

sudo pacman -S csfml
sudo pacman -S sfml

sudo pacman -S shellcheck

sudo pacman -S strace

sudo pacman -S swig

sudo pacman -S tcl
sudo pacman -S tk

sudo pacman -S valgrind

sudo pacman -S vc

sudo pacman -S expat
sudo pacman -S libxml++
sudo pacman -S libxml2
sudo pacman -S pugixml
sudo pacman -S xerces-c

sudo pacman -S z3

sudo pacman -S ccfits
sudo pacman -S cfitsio

sudo pacman -S eigen

sudo pacman -S gap
sudo pacman -S gap-packages

sudo pacman -S gmp
sudo pacman -S mpfi
sudo pacman -S mpfr

sudo pacman -S bc

sudo pacman -S octave
# Add configuration file
mkdir -p "$HOME"/.octave
{
  echo "clc;"
  echo "clear all;"
  echo "close all;"
  echo "format short;"
  echo "more off;"
  echo "pkg prefix ~/.octave;"
} > "$HOME"/.octaverc

sudo pacman -S gnuplot

sudo pacman -S gnuradio
sudo pacman -S gnuradio-companion

sudo pacman -S gsl

sudo pacman -S blas
sudo pacman -S cblas
sudo pacman -S lapack
sudo pacman -S lapacke

sudo pacman -S maxima
sudo pacman -S wxmaxima

sudo pacman -S netcdf
sudo pacman -S netcdf-cxx
sudo pacman -S netcdf-fortran

sudo pacman -S opencascade

sudo pacman -S root

sudo pacman -S sundials

sudo pacman -S tesseract
sudo pacman -S tesseract-data-eng
sudo pacman -S tesseract-data-rus

sudo pacman -S vtk

sudo pacman -S calibre

sudo pacman -S flameshot

sudo pacman -S ghostscript

sudo pacman -S gwenview
sudo pacman -S kimageformats

sudo pacman -S imagemagick

sudo pacman -S keepassxc

sudo pacman -S aspell
sudo pacman -S aspell-en
sudo pacman -S aspell-ru

sudo pacman -S hunspell
sudo pacman -S hunspell-en_gb
sudo pacman -S hunspell-en_us
paru        -S hunspell-ru

sudo pacman -S ispell

sudo pacman -S languagetool

sudo pacman -S libreoffice-still
sudo pacman -S libreoffice-still-en-gb
sudo pacman -S libreoffice-still-ru
sudo pacman -S libreoffice-still-sdk

sudo pacman -S lyx

sudo pacman -S firefox
sudo pacman -S firefox-i18n-en-us
sudo pacman -S firefox-i18n-ru
sudo pacman -S plasma-browser-integration

sudo pacman -S okular

sudo pacman -S pandoc

sudo pacman -S biber
sudo pacman -S texlab
sudo pacman -S texlive-bin
sudo pacman -S texlive-core
sudo pacman -S texlive-lang
sudo pacman -S texlive-langextra
sudo pacman -S texlive-most

sudo pacman -S thunderbird
sudo pacman -S thunderbird-i18n-en-gb
sudo pacman -S thunderbird-i18n-en-us
sudo pacman -S thunderbird-i18n-ru

sudo pacman -S xournalpp

sudo pacman -S blender

sudo pacman -S darktable

sudo pacman -S gimp

sudo pacman -S inkscape

sudo pacman -S krita

sudo pacman -S scribus

sudo pacman -S carla
sudo pacman -S ladspa
sudo pacman -S ladspa-plugins
sudo pacman -S lv2
sudo pacman -S lv2-plugins
sudo pacman -S vst-plugins
sudo pacman -S vst3-plugins
sudo pacman -S vst3sdk

sudo pacman -S clementine

sudo pacman -S handbrake
sudo pacman -S handbrake-cli

sudo pacman -S cdparanoia
sudo pacman -S cdrdao
sudo pacman -S cdrtools
sudo pacman -S dvd+rw-tools
sudo pacman -S emovix
sudo pacman -S k3b
sudo pacman -S libquicktime
sudo pacman -S transcode
sudo pacman -S vcdimager

sudo pacman -S kdenlive

sudo pacman -S kid3

sudo pacman -S mpv

sudo pacman -S obs-studio

paru -S ocenaudio-bin

sudo pacman -S qtractor

sudo pacman -S soundkonverter

paru -S spotify

sudo pacman -S vlc

sudo pacman -S apache

sudo pacman -S firewalld
sudo pacman -S nftables
# sudo systemctl start  firewalld.service
# sudo systemctl enable firewalld.service

sudo pacman -S gnutls

sudo pacman -S hashcat
sudo pacman -S hashcat-utils
sudo pacman -S hcxkeys
sudo pacman -S hcxtools

sudo pacman -S hydra

paru -S jigdo

sudo pacman -S john

sudo pacman -S freerdp
sudo pacman -S krdc
sudo pacman -S libvncserver

sudo pacman -S lynis

sudo pacman -S netdata
sudo systemctl start  netdata.service
sudo systemctl enable netdata.service

sudo pacman -S nginx

sudo pacman -S nmap

sudo pacman -S ipset
sudo pacman -S libssh
sudo pacman -S openssh
sudo pacman -S sshfs
sudo pacman -S sshguard

sudo pacman -S openssl

sudo pacman -S openvpn

sudo pacman -S putty

sudo pacman -S qbittorrent
sudo pacman -S qbittorrent-nox

sudo pacman -S tcpdump

sudo pacman -S telegram-desktop

sudo pacman -S wireshark-cli
sudo pacman -S wireshark-qt

sudo pacman -S openttd
sudo pacman -S openttd-opengfx
sudo pacman -S openttd-opensfx

{
  echo ""
  echo "[multilib]"
  echo "Include = /etc/pacman.d/mirrorlist"
} | sudo tee -a /etc/pacman.conf
sudo pacman -Syu
sudo pacman -S lib32-nvidia-utils
sudo pacman -S steam

sudo pacman -S wesnoth

sudo pacman -S widelands

sudo pacman   -Syu
sudo pacman   -Rns "$(pacman -Qtdq)"
sudo pacman   -Scc
sudo paccache -rk0

if [ -f /usr/bin/paru ]; then
  paru -Sua
  paru -c && paru -Sc
fi

if [ -f /usr/bin/opam ]; then
  opam update  --all         --jobs=4
  opam upgrade --all --fixup --jobs=4
fi

if [ -f /usr/bin/rustup ]; then
  rustup update
fi

sudo systemctl start  libvirtd.service
sudo systemctl enable libvirtd.service

{
  echo ''
  echo 'unix_sock_group = "libvirt"'
  echo 'unix_sock_rw_perms = "0770"'
} | sudo tee -a /etc/libvirt/libvirtd.conf

newgrp libvirt
sudo usermod -aG libvirt "$(whoami)"
sudo systemctl restart libvirtd.service
