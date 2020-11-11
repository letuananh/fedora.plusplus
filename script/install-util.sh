#!/usr/bin/sh

dnf install -y goldendict p7zip unrar filezilla anki comix gnugo langpacks-{ja,zh_CN,zh_TW,vi}

dnf install -y gnome-tweak-tool alacarte chromium grub-customizer

# Partition editing tool
dnf install -y gparted mediawriter

# support exfat format
dnf install -y fuse-exfat

dnf install -y gnome-shell-extension-pomodoro
