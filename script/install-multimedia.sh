#!/usr/bin/sh

# Photography, multimedia
yum install -y gstreamer-plugins-bad gstreamer-plugins-ugly gstreamer-ffmpeg vlc gimp inkscape darktable audio-convert-mod lame mac faac faad easytag kid3-qt ffmpeg nomacs

# to support banshee with MP3 playback
dnf install -y banshee gstreamer1-plugins-ugly

# Musical software
yum install -y musescore tuxguitar 

# A nice light-weight image editor
yum install -y pinta firefox

# Sound lib
yum install -y alsa-lib.i686
