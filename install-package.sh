#!/usr/bin/sh

dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Install packages
./script/install-multimedia.sh
./script/install-util.sh
./script/install-dev.sh
./script/install-edu.sh
