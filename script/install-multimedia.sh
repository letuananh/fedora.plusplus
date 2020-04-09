#!/usr/bin/sh

# Photography, multimedia
dnf install -y gstreamer-plugins-bad gstreamer-plugins-ugly gstreamer-ffmpeg vlc gimp inkscape darktable audio-convert-mod lame mac faac faad easytag kid3-qt ffmpeg nomacs

# to support banshee with MP3 playback
dnf install -y banshee gstreamer1-plugins-ugly

# Musical software
dnf install -y musescore tuxguitar 

# A nice light-weight image editor
dnf install -y pinta

# Sound lib
dnf install -y alsa-lib pulseaudio-equalizer
