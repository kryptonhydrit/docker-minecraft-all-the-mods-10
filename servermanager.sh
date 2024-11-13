#!/bin/bash

# Colors
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33"
BLUE="\033[0;34m"
NC="\033[0m"

# Variables
_SERVER_FILES="Server-Files-1.19.zip"

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
        neoforge*
    curl -Lo "$_SERVER_FILES" "https://mediafilez.forgecdn.net/files/5898/752/$_SERVER_FILES" || exit 1
    bsdtar -xf $_SERVER_FILES --strip-component 1
    ATM10_INSTALL_ONLY=true /bin/bash startserver.sh
fi

source /includes/config.sh

/bin/bash run.sh nogui