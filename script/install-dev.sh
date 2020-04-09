#!/usr/bin/sh

# Install C-dev tools
dnf install -y llvm gcc gcc-c++ cmake tkinter dconf-editor boost autoconf automake

# Editor
dnf install -y emacs geany

# Install version control softwares
dnf install -y meld git git-gui svn rapidsvn

# Install SQLite database management tool
dnf install -y sqliteman

# Utilities
dnf install -y screen wget

# prettify XML code
dnf install -y xmlstarlet

# Install ruby development tools
dnf install -y ruby ruby-devel rubygems

# Install python packages
dnf install -y python-tools python-lxml python-pip  python3-lxml python3-pip
