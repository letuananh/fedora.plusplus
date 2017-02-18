#!/usr/bin/sh

# Install C-dev tools
yum install -y llvm gcc gcc-c++ cmake tkinter gtk2-devel qt-devel dconf-editor boost

# Web development
yum install -y httpd httpd-devel

# Editor
yum install -y emacs geany

# Utilities
yum install -y screen lynx elinks wget

# prettify XML code
yum install -y xmlstarlet

# Install ruby development tools
yum install -y gcc ruby ruby-devel rubygems
gem install jekyll -V
gem install therubyracer -V

# Install version control softwares
yum install -y svn rapidsvn meld git git-gui

# Install SQLite database management tool
yum install -y sqliteman

# Install python packages
yum install -y python-tools python-pip python-lxml python3-lxml python3-pip

# Install Chromium
yum install -y wget
cd /etc/yum.repos.d
wget http://repos.fedorapeople.org/repos/spot/chromium-stable/fedora-chromium-stable.repo
yum install -y --nogpgcheck chromium

# XML support
yum install -y libpng12 libXext.i686 libX11.i686

