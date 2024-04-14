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
sh /home/ahmad/Desktop/liblsl-master/standalone_compilation_linux.sh

mkdir /home/ahmad/.local/lib/python3.10/site-packages/pylsl/lib
cp liblsl.so lslver /home/ahmad/.local/lib/python3.10/site-packages/pylsl/lib


https://github.com/labstreaminglayer/App-LabRecorder
