# Docker - All the Mods 10 Server

- [Docker - All the Mods 10 Server](#docker---all-the-mods-10-server)
  - [About](#about)
  - [Getting started](#getting-started)
  - [Environment variables](#environment-variables)
  - [FAQ](#faq)
    - [Update to newer version](#update-to-newer-version)
  - [Sources](#sources)


## About
On first run the container will download and install the tagged Version ´[All the Mods 10](https://www.curseforge.com/minecraft/modpacks/all-the-mods-10)-X.X.X´ and install it.

## Getting started

1. Create a `game` sub-directory on your Docker-Node
    - (Examples: `/opt/minecraft-atm10`)
    - Directory will be used to store the gamefiles
2. Pull latest version with `docker pull kryptonhydrit/minecraft-atm10:latest`
3. Start the container with the following command: \
  `docker run -d -e "EULA=true" -v "/opt/minecraft-atm10:/data" -p "25565:25565" --name minecraft-atm10 kryptonhydrit/minecraft-atm10:latest`

## Environment variables

See [this file](/docs/ENV_VARS.md) for the documentation

## FAQ

### Update to newer version
> [!CAUTION]
> Don't update your server without backup the `game` directory
1. Backup your `game` directory
2. Pull latest image or specific version from the container `docker pull kryptonhydrit/minecraft-atm10:TAG`
3. Start the container and mount the existing `game` directory

## Sources

Github: https://github.com/kryptonhydrit/docker-all-the-mods-10 \
Docker: https://hub.docker.com/r/kryptonhydrit/minecraft-atm10
