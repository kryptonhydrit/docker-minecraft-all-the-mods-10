#!/bin/bash

# Colors
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33"
BLUE="\033[0;34m"
NC="\033[0m"

# Variables
_SERVER_VERSION="2.15"
_SERVER_DOWNLOAD_PATH="6040/506"
_SERVER_FILES="Server-Files-${_SERVER_VERSION}.zip"

echo -e "${BLUE}> [DEBUG] ATM10 - Server version: ${_SERVER_VERSION}${NC}"

if [[ ! -d "/data" ]]; then
    echo -e "${RED}> [ERROR] No mountpoint found, data loss possible - Continue without persistent data!${NC}"
    mkdir /data
fi

cd /data

if [[ "$EULA" == "true" ]]; then
    echo "eula=true" > /data/eula.txt
else
    echo -e "${RED}> [ERROR] You must accept the eula to install the server!${NC}"
    exit 0
fi

if [[ ! -f "$_SERVER_FILES" ]]; then
    rm -rf config \
        defaultconfigs \
        kubejs \
        mods \
        packmenu \
        libraries \
        neoforge*
    curl -Lo "$_SERVER_FILES" "https://mediafilez.forgecdn.net/files/$_SERVER_DOWNLOAD_PATH/$_SERVER_FILES" || exit 1
    bsdtar -xf $_SERVER_FILES --strip-component 1
    ATM10_INSTALL_ONLY=true /bin/bash startserver.sh
fi

source /includes/config.sh

/bin/bash run.sh nogui