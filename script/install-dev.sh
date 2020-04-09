#!/usr/bin/sh

# Install C-dev tools
dnf install -y llvm gcc gcc-c++ cmake tkinter gtk2-devel qt-devel dconf-editor boost
# autotools
dnf install -y autoconf automake

# Web development
dnf install -y httpd httpd-devel

# Editor
dnf install -y emacs geany

# Utilities
dnf install -y screen lynx elinks wget

# prettify XML code
dnf install -y xmlstarlet

# Install ruby development tools
dnf install -y gcc ruby ruby-devel rubygems
gem install -y jekyll -V
gem install -y therubyracer -V

# Install version control softwares
dnf install -y meld git git-gui svn rapidsvn

# Install SQLite database management tool
dnf install -y sqliteman

# Install python packages
dnf install -y python-tools python-lxml python-pip  python3-lxml python3-pip

# Install Chromium
dnf install -y wget
# cd /etc/yum.repos.d
# wget http://repos.fedorapeople.org/repos/spot/chromium-stable/fedora-chromium-stable.repo
# dnf install -y --nogpgcheck chromium

# XML support
dnf install -y libpng12 libXext.i686 libX11.i686

