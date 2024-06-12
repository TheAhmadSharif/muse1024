#!/bin/bash
set -e -x
handle_error() {
    echo "An error occurred on line $1"
    exit 1
}

trap 'handle_error $LINENO' ERR

# _________________ Muselsl  _________________ #
# curl -L -O https://github.com/sccn/liblsl/archive/master.zip
# unzip master -d ~/Desktop/
# rm master.zip

apt install -y libgtk-3-dev build-essential gcc g++ pkg-config make hostapd libqrencode-dev libpng-dev

apt install python3-pip -y
pip install pylsl muselsl mne


# sh /home/ahmad/Desktop/liblsl-master/standalone_compilation_linux.sh

# mkdir /home/ahmad/.local/lib/python3.10/site-packages/pylsl/lib
# cp liblsl.so lslver /home/ahmad/.local/lib/python3.10/site-packages/pylsl/lib

