#!/usr/bin/env bash

# Get and build cmake
function install-cmake()
{
    pushd /tmp
    wget https://github.com/Kitware/CMake/releases/download/v3.12.0/cmake-3.12.0.tar.gz
    tar -zxvf cmake-3.12.0.tar.gz
    cd cmake-3.12.0
    ./bootstrap
    make -j
    make install
    popd
}

install-cmake

curl -sL https://deb.nodesource.com/setup_10.x | bash

apt update
apt -y install gcc g++ make
apt -y install nodejs

npm config set registry https://registry.npm.taobao.org
npm config set puppeteer_download_host https://npm.taobao.org/mirrors
npm config set electron_mirror https://npm.taobao.org/mirrors/electron/
npm config set sass-binary-site https://npm.taobao.org/mirrors/node-sass
npm install -g yarn electron-builder
apt -y install python3-pip
apt -y install yum
apt -y install libasound2

pip3 install pipenv

yarn
yarn build