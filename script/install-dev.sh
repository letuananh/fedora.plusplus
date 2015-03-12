#!/usr/bin/sh

# Install C-dev tools
yum install -y llvm gcc gcc-c++ cmake geany wget tkinter gtk2-devel qt-devel dconf-editor boost git emacs  httpd httpd-devel screen

# Install subversion software
yum install -y svn rapidsvn meld

# Install SQLite database management tool
yum install -y sqliteman

# Install python packages
yum install -y python-tools python-pip python-lxml python3-lxml

# Install Chromium
yum install -y wget
cd /etc/yum.repos.d
wget http://repos.fedorapeople.org/repos/spot/chromium-stable/fedora-chromium-stable.repo
yum install -y --nogpgcheck chromium


