#!/bin/bash
set -e -x
handle_error() {
    echo "An error occurred on line $1"
    exit 1
}

trap 'handle_error $LINENO' ERR

# _________________ LabRecorder  _________________ #
# https://github.com/labstreaminglayer/App-LabRecorder
# https://github.com/labstreaminglayer/App-LabRecorder/releases
apt-get install qt6-base-dev freeglut3-dev -y

curl -L -O https://github.com/labstreaminglayer/App-LabRecorder/releases/download/v1.16.4/LabRecorder-1.16.4-jammy_amd64.deb
