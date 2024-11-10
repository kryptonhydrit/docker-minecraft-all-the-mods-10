# Environment variables
[Back to main](../README.md#environment-variables)

## Server settings
| Variable | Description | Allowed values |
| --- | --- | --- |
| EULA | Must set to true to install server | Boolean |
| SERVER_CONFIG_AUTO_MODE | Set to 'false' to provide custom config | Boolean | 

## Player settings
| Variable | Description |
| --- | --- |
| OPS_LIST | Comma-separated list of players to assign operator rights |
| ALLOW_LIST | Comma-separated list of players to add to the whitelist |

## Gameserver settings

The container supports all keys of Minecraft version 1.21.1. Below you will find the variable-key mapping.
For the individual descriptions please have a look at the [official documentation](https://minecraft.wiki/w/Server.properties#Keys).

| Variable | Key |
| --- | --- |
| ACCEPTS_TRANSFERS          | accepts-transfers          |
| ALLOW_FLIGHT               | allow-flight               |
| ALLOW_NETHER               | allow-nether               |
| BROADCAST_CONSOLE_TO_OPS   | broadcast-console-to-ops   |
| BROADCAST_RCON_TO_OPS      | broadcast-rcon-to-ops      |
| BUG_REPORT_LINK            | bug-report-link            |
| DIFFICULTY                 | difficulty                 |
| ENABLE_COMMAND_BLOCK       | enable-command-block       |
| ENABLE_JMX_MONITORING      | enable-jmx-monitoring      |
| ENABLE_QUERY               | enable-query               |
| ENABLE_RCON                | enable-rcon                |
| ENABLE_STATUS              | enable-status              |
| ENFORCE_SECURE_PROFILE     | enforce-secure-profile     |
| ENFORCE_WHITELIST          | enforce-whitelist          |
| ENTITY_BROADCAST_RANGE_PERCENTAGE | entity-broadcast-range-percentage |
| FORCE_GAMEMODE             | force-gamemode             |
| FUNCTION_PERMISSION_LEVEL  | function-permission-level  |
| GAMEMODE                   | gamemode                   |
| GENERATE_STRUCTURES        | generate-structures        |
| GENERATOR_SETTINGS         | generator-settings         |
| HARDCORE                   | hardcore                   |
| HIDE_ONLINE_PLAYERS        | hide-online-players        |
| INITIAL_DISABLED_PACKS     | initial-disabled-packs     |
| INITIAL_ENABLED_PACKS      | initial-enabled-packs      |
| LEVEL_NAME                 | level-name                 |
| LEVEL_SEED                 | level-seed                 |
| LEVEL_TYPE                 | level-type                 |
| LOG_IPS                    | log-ips                    |
| MAX_CHAINED_NEIGHBOR_UPDATES | max-chained-neighbor-updates |
| MAX_PLAYERS                | max-players                |
| MAX_TICK_TIME              | max-tick-time              |
| MAX_WORLD_SIZE             | max-world-size             |
| MOTD                       | motd                       |
| NETWORK_COMPRESSION_THRESHOLD | network-compression-threshold |
| ONLINE_MODE                | online-mode                |
| OP_PERMISSION_LEVEL        | op-permission-level        |
| PLAYER_IDLE_TIMEOUT        | player-idle-timeout        |
| PREVENT_PROXY_CONNECTIONS  | prevent-proxy-connections  |
| PVP                        | pvp                        |
| QUERY_PORT                 | query.port                 |
| RATE_LIMIT                 | rate-limit                 |
| RCON_PASSWORD              | rcon.password              |
| RCON_PORT                  | rcon.port                  |
| REGION_FILE_COMPRESSION    | region-file-compression    |
| REQUIRE_RESOURCE_PACK      | require-resource-pack      |
| RESOURCE_PACK              | resource-pack              |
| RESOURCE_PACK_ID           | resource-pack-id           |
| RESOURCE_PACK_PROMPT       | resource-pack-prompt       |
| RESOURCE_PACK_SHA1         | resource-pack-sha1         |
| SERVER_IP                  | server-ip                  |
| SERVER_PORT                | server-port                |
| SIMULATION_DISTANCE        | simulation-distance        |
| SPAWN_ANIMALS              | spawn-animals              |
| SPAWN_MONSTERS             | spawn-monsters             |
| SPAWN_NPCS                 | spawn-npcs                 |
| SPAWN_PROTECTION           | spawn-protection           |
| SYNC_CHUNK_WRITES          | sync-chunk-writes          |
| TEXT_FILTERING_CONFIG      | text-filtering-config      |
| USE_NATIVE_TRANSPORT       | use-native-transport       |
| VIEW_DISTANCE              | view-distance              |
| WHITE_LIST                 | white-list                 |