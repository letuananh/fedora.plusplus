#!/usr/bin/sh

yum install -y R llvm gcc gcc-c++ cmake svn rapidsvn geany wget tkinter gtk2-devel qt-devel dconf-editor boost git emacs python-pip httpd httpd-devel screen

yum install -y wget
cd /etc/yum.repos.d
wget http://repos.fedorapeople.org/repos/spot/chromium-stable/fedora-chromium-stable.repo

yum install -y chromium
