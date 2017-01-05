#!/usr/bin/sh
FEDORA_VERSION=20

# Setup repository?
yum localinstall -y --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-${FEDORA_VERSION}.noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-${FEDORA_VERSION}.noarch.rpm

# for fedora 22 or above
# dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Install packages
./script/install-multimedia.sh
./script/install-util.sh
./script/install-dev.sh
./script/install-edu.sh
