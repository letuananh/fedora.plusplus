#!/usr/bin/sh

# GTK & QT development
dnf install -y gtk2-devel qt-devel 

# Web development (Apache2)
dnf install -y httpd httpd-devel

# text-based browsers
dnf install -y lynx elinks

# Chromium browser
cd /etc/yum.repos.d
wget http://repos.fedorapeople.org/repos/spot/chromium-stable/fedora-chromium-stable.repo
dnf install -y --nogpgcheck chromium

# Other packages
dnf install -y libpng12 libXext.i686 libX11.i686

# Fedora livecd-tools
dnf install -y livecd-tools 

# x-86 for 32-bit apps
dnf install -y glibc.i686 libgcc.i686 
dnf install -y motif.i686 libjpeg-turbo.i686 libX11.i686 libpng.i686 fontconfig.i686 libpng12.i686  libXext.i686
