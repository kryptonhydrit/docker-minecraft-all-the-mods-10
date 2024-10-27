#!/bin/bash

# Colors
BLACK="\033[0;30m'"
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33"
BLUE="\033[0;34m"
MAGENTA="\033[0;35m"
CYAN="\033[0;36m"
WHITE="\033[0;37m"
NC="\033[0m"

# Script need option for build options

main() {
    echo -e "${BLUE}> Start building local docker container for development purpose${NC}"
    docker build -t kryptonhydrit/minecraft-atm10:latest .
    echo -e "${BLUE}> End building local docker container${NC}"
}

main