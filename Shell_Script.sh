#!/bin/bash

# This shell script can be used to install all dependencies at once for muse device to run in any Linux distribtuibn (Ubuntu)
# Author: Ahmad Sharif
# Date: 15 April 2024


set -e -x
handle_error() {
    echo "An error occurred on line $1"
    exit 1
}

trap 'handle_error $LINENO' ERR

# _________________ Muselsl  _________________ #
apt update -y
apt install python3-pip -y
apt install python3-tk -y
apt install python3-pil python3-pil.imagetk -y
apt install openssh-server -y
ufw allow 22
apt install build-essential g++ cmake -y
apt install cmake -y
apt install curl -y
apt install socat -y
apt-get install nmap -y
apt-get install qt6-base-dev freeglut3-dev -y
apt install remmina -y
mkdir ~/Templates
touch ~/Templates/TextFile.txt
gsettings set org.gnome.desktop.interface clock-show-seconds true



apt-get install qt6-base-dev freeglut3-dev -y # LabRecorder
pip install pylsl muselsl mne


echo "_____ Python and muselsl dependency Installation complete _____"


curl -L -O https://github.com/alexandrebarachant/muse-lsl/archive/master.zip
unzip master -d ~/Desktop/
rm master.zip

curl -L -O https://github.com/sccn/liblsl/archive/master.zip
unzip master -d ~/Desktop/
rm master.zip


echo "_____ LabRecorder _____"

curl -L -O https://github.com/labstreaminglayer/App-LabRecorder/releases/download/v1.16.4/LabRecorder-1.16.4-jammy_amd64.deb
