#!/bin/bash
set -e -x
handle_error() {
    echo "An error occurred on line $1"
    exit 1
}

trap 'handle_error $LINENO' ERR



apt update -y
apt install python3-pip -y
pip install pylsl
pip install muselsl
pip install mne
apt install python3-tk -y
apt install python3-pil python3-pil.imagetk -y
echo "_____ Python and muselsl dependency Installation complete _____"

apt install build-essential g++ cmake -yping
apt install cmake -y
echo "_____ Cmake Installation complete _____"
apt install openssh-server -y
echo "_____ openssh Installation complete _____"

apt-get install qt6-base-dev freeglut3-dev -y

apt install git -y
apt install curl -y


curl -L -O https://github.com/alexandrebarachant/muse-lsl/archive/master.zip
unzip master -d ~/Desktop/
rm master.zip

curl -L -O https://github.com/sccn/liblsl/archive/master.zip
unzip master -d ~/Desktop/
rm master.zip
