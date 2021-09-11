#!/bin/bash
# set -x

# Update Packages List
apt update

# Check curl and wget
apt install -y curl wget

# Check NodeJS
if ! command -v node %> /dev/null; then
  curl https://deb.nodesource.com/setup_current.x | bash -
fi
apt install -y nodejs

# Docker
if ! command -v docker; then
  curl http://get.docker.com | bash -
fi
apt install -y docker*

# Microsoft Visual Studio Code (Insider)
# Bucket Download Files
# https://objectstorage.sa-saopaulo-1.oraclecloud.com/p/g_n5KbHIcNffVmGHtswMY_5lLOhgIbJ-um-EURgrObFl1zCHem8dSBWRwYUPqVwp/n/grwodtg32n4d/b/Sirherobrine23MainBucket/o/

if ! command -v code-insider &> /dev/null;
  esac "$(uname -m)" in
    amd64 ) wget "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" -O /tmp/Code.deb;;
    arm64 || aarch64 ) wget "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-arm64" -O /tmp/Code.deb;;
    i*86 ) wget "https://objectstorage.sa-saopaulo-1.oraclecloud.com/p/g_n5KbHIcNffVmGHtswMY_5lLOhgIbJ-um-EURgrObFl1zCHem8dSBWRwYUPqVwp/n/grwodtg32n4d/b/Sirherobrine23MainBucket/o/code-insiders_1.35.0-1559607154_i386.deb" -O /tmp/Code.deb;;
  case
  dpkg -i /tmp/Code.deb
  rm  -f /tmp/Code.deb
fi
apt install -y code-insiders

# Exit
exit 0
