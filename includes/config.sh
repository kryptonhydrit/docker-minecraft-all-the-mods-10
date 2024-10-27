#!/bin/bash

# Create lists to manage operators and whitelist group
function init_player_lists() {
    if [[ -n $OPS_LIST ]]; then
        echo $OPS_LIST | tr ',' '\n' > ops.txt
    fi

    if [[ -n "$ALLOW_LIST" ]]; then
        echo $ALLOW_LIST | tr ',' '\n' > white-list.txt
    fi
}

function init_server_properties() {
    # Manage server.properties
    # Initialise full server.properties after installation
    cp /configs/server.properties server.properties

    if [[ ${ACCEPTS_TRANSFERS+x} ]]; then
        sed -E -i "s/accepts-transfers=(.*)/accepts-transfers=$ACCEPTS_TRANSFERS/" "server.properties"
    fi

    if [[ ${ALLOW_FLIGHT+x} ]]; then
        sed -E -i "s/allow-flight=(.*)/allow-flight=$ALLOW_FLIGHT/" "server.properties"
    fi

    if [[ ${ALLOW_NETHER+x} ]]; then
        sed -E -i "s/allow-nether=(.*)/allow-nether=$ALLOW_NETHER/" "server.properties"
    fi

    if [[ ${BROADCAST_CONSOLE_TO_OPS+x} ]]; then
        sed -E -i "s/broadcast-console-to-ops=(.*)/broadcast-console-to-ops=$BROADCAST_CONSOLE_TO_OPS/" "server.properties"
    fi

    if [[ ${BROADCAST_RCON_TO_OPS+x} ]]; then
        sed -E -i "s/broadcast-rcon-to-ops=(.*)/broadcast-rcon-to-ops=$BROADCAST_RCON_TO_OPS/" "server.properties"
    fi

    if [[ ${BUG_REPORT_LINK+x} ]]; then
        sed -E -i "s/bug-report-link=(.*)/bug-report-link=$BUG_REPORT_LINK/" "server.properties"
    fi

    if [[ ${DIFFICULTY+x} ]]; then
        sed -E -i "s/difficulty=(.*)/difficulty=$DIFFICULTY/" "server.properties"
    fi

    if [[ ${ENABLE_COMMAND_BLOCK+x} ]]; then
        sed -E -i "s/enable-command-block=(.*)/enable-command-block=$ENABLE_COMMAND_BLOCK/" "server.properties"
    fi

    if [[ ${ENABLE_JMX_MONITORING+x} ]]; then
        sed -E -i "s/enable-jmx-monitoring=(.*)/enable-jmx-monitoring=$ENABLE_JMX_MONITORING/" "server.properties"
    fi

    if [[ ${ENABLE_QUERY+x} ]]; then
        sed -E -i "s/enable-query=(.*)/enable-query=$ENABLE_QUERY/" "server.properties"
    fi

    if [[ ${ENABLE_RCON+x} ]]; then
        sed -E -i "s/enable-rcon=(.*)/enable-rcon=$ENABLE_RCON/" "server.properties"
    fi

    if [[ ${ENABLE_STATUS+x} ]]; then
        sed -E -i "s/enable-status=(.*)/enable-status=$ENABLE_STATUS/" "server.properties"
    fi

    if [[ ${ENFORCE_SECURE_PROFILE+x} ]]; then
        sed -E -i "s/enforce-secure-profile=(.*)/enforce-secure-profile=$ENFORCE_SECURE_PROFILE/" "server.properties"
    fi

    if [[ ${ENFORCE_WHITELIST+x} ]]; then
        sed -E -i "s/enforce-whitelist=(.*)/enforce-whitelist=$ENFORCE_WHITELIST/" "server.properties"
    fi

    if [[ ${ENTITY_BROADCAST_RANGE_PERCENTAGE+x} ]]; then
        sed -E -i "s/entity-broadcast-range-percentage=(.*)/entity-broadcast-range-percentage=$ENTITY_BROADCAST_RANGE_PERCENTAGE/" "server.properties"
    fi

    if [[ ${FORCE_GAMEMODE+x} ]]; then
        sed -E -i "s/force-gamemode=(.*)/force-gamemode=$FORCE_GAMEMODE/" "server.properties"
    fi

    if [[ ${FUNCTION_PERMISSION_LEVEL+x} ]]; then
        sed -E -i "s/function-permission-level=(.*)/function-permission-level=$FUNCTION_PERMISSION_LEVEL/" "server.properties"
    fi

    if [[ ${GAMEMODE+x} ]]; then
        sed -E -i "s/gamemode=(.*)/gamemode=$GAMEMODE/" "server.properties"
    fi

    if [[ ${GENERATE_STRUCTURES+x} ]]; then
        sed -E -i "s/generate-structures=(.*)/generate-structures=$GENERATE_STRUCTURES/" "server.properties"
    fi

    if [[ ${GENERATOR_SETTINGS+x} ]]; then
        sed -E -i "s/generator-settings=(.*)/generator-settings=$GENERATOR_SETTINGS/" "server.properties"
    fi

    if [[ ${HARDCORE+x} ]]; then
        sed -E -i "s/hardcore=(.*)/hardcore=$HARDCORE/" "server.properties"
    fi

    if [[ ${HIDE_ONLINE_PLAYERS+x} ]]; then
        sed -E -i "s/hide-online-players=(.*)/hide-online-players=$HIDE_ONLINE_PLAYERS/" "server.properties"
    fi

    if [[ ${INITIAL_DISABLED_PACKS+x} ]]; then
        sed -E -i "s/initial-disabled-packs=(.*)/initial-disabled-packs=$INITIAL_DISABLED_PACKS/" "server.properties"
    fi

    if [[ ${INITIAL_ENABLED_PACKS+x} ]]; then
        sed -E -i "s/initial-enabled-packs=(.*)/initial-enabled-packs=$INITIAL_ENABLED_PACKS/" "server.properties"
    fi

    if [[ ${LEVEL_NAME+x} ]]; then
        sed -E -i "s/level-name=(.*)/level-name=$LEVEL_NAME/" "server.properties"
    fi

    if [[ ${LEVEL_SEED+x} ]]; then
        sed -E -i "s/level-seed=(.*)/level-seed=$LEVEL_SEED/" "server.properties"
    fi

    if [[ ${LEVEL_TYPE+x} ]]; then
        sed -E -i "s/level-type=(.*)/level-type=$LEVEL_TYPE/" "server.properties"
    fi

    if [[ ${LOG_IPS+x} ]]; then
        sed -E -i "s/log-ips=(.*)/log-ips=$LOG_IPS/" "server.properties"
    fi

    if [[ ${MAX_CHAINED_NEIGHBOR_UPDATES+x} ]]; then
        sed -E -i "s/max-chained-neighbor-updates=(.*)/max-chained-neighbor-updates=$MAX_CHAINED_NEIGHBOR_UPDATES/" "server.properties"
    fi

    if [[ ${MAX_PLAYERS+x} ]]; then
        sed -E -i "s/max-players=(.*)/max-players=$MAX_PLAYERS/" "server.properties"
    fi

    if [[ ${MAX_TICK_TIME+x} ]]; then
        sed -E -i "s/max-tick-time=(.*)/max-tick-time=$MAX_TICK_TIME/" "server.properties"
    fi

    if [[ ${MAX_WORLD_SIZE+x} ]]; then
        sed -E -i "s/max-world-size=(.*)/max-world-size=$MAX_WORLD_SIZE/" "server.properties"
    fi

    if [[ ${MOTD+x} ]]; then
        sed -E -i "s/motd=(.*)/motd=$MOTD/" "server.properties"
    fi

    if [[ ${NETWORK_COMPRESSION_THRESHOLD+x} ]]; then
        sed -E -i "s/network-compression-threshold=(.*)/network-compression-threshold=$NETWORK_COMPRESSION_THRESHOLD/" "server.properties"
    fi

    if [[ ${ONLINE_MODE+x} ]]; then
        sed -E -i "s/online-mode=(.*)/online-mode=$ONLINE_MODE/" "server.properties"
    fi

    if [[ ${OP_PERMISSION_LEVEL+x} ]]; then
        sed -E -i "s/op-permission-level=(.*)/op-permission-level=$OP_PERMISSION_LEVEL/" "server.properties"
    fi

    if [[ ${PLAYER_IDLE_TIMEOUT+x} ]]; then
        sed -E -i "s/player-idle-timeout=(.*)/player-idle-timeout=$PLAYER_IDLE_TIMEOUT/" "server.properties"
    fi

    if [[ ${PREVENT_PROXY_CONNECTIONS+x} ]]; then
        sed -E -i "s/prevent-proxy-connections=(.*)/prevent-proxy-connections=$PREVENT_PROXY_CONNECTIONS/" "server.properties"
    fi

    if [[ ${PVP+x} ]]; then
        sed -E -i "s/pvp=(.*)/pvp=$PVP/" "server.properties"
    fi

    if [[ ${QUERY_PORT+x} ]]; then
        sed -E -i "s/query.port=(.*)/query.port=$QUERY_PORT/" "server.properties"
    fi

    if [[ ${RATE_LIMIT+x} ]]; then
        sed -E -i "s/rate-limit=(.*)/rate-limit=$RATE_LIMIT/" "server.properties"
    fi

    if [[ ${RCON_PASSWORD+x} ]]; then
        sed -E -i "s/rcon.password=(.*)/rcon.password=$RCON_PASSWORD/" "server.properties"
    fi

    if [[ ${RCON_PORT+x} ]]; then
        sed -E -i "s/rcon.port=(.*)/rcon.port=$RCON_PORT/" "server.properties"
    fi

    if [[ ${REGION_FILE_COMPRESSION+x} ]]; then
        sed -E -i "s/region-file-compression=(.*)/region-file-compression=$REGION_FILE_COMPRESSION/" "server.properties"
    fi

    if [[ ${REQUIRE_RESOURCE_PACK+x} ]]; then
        sed -E -i "s/require-resource-pack=(.*)/require-resource-pack=$REQUIRE_RESOURCE_PACK/" "server.properties"
    fi

    if [[ ${RESOURCE_PACK+x} ]]; then
        sed -E -i "s/resource-pack=(.*)/resource-pack=$RESOURCE_PACK/" "server.properties"
    fi

    if [[ ${RESOURCE_PACK_ID+x} ]]; then
        sed -E -i "s/resource-pack-id=(.*)/resource-pack-id=$RESOURCE_PACK_ID/" "server.properties"
    fi

    if [[ ${RESOURCE_PACK_PROMPT+x} ]]; then
        sed -E -i "s/resource-pack-prompt=(.*)/resource-pack-prompt=$RESOURCE_PACK_PROMPT/" "server.properties"
    fi

    if [[ ${RESOURCE_PACK_SHA1+x} ]]; then
        sed -E -i "s/resource-pack-sha1=(.*)/resource-pack-sha1=$RESOURCE_PACK_SHA1/" "server.properties"
    fi

    if [[ ${SERVER_IP+x} ]]; then
        sed -E -i "s/server-ip=(.*)/server-ip=$SERVER_IP/" "server.properties"
    fi

    if [[ ${SERVER_PORT+x} ]]; then
        sed -E -i "s/server-port=(.*)/server-port=$SERVER_PORT/" "server.properties"
    fi

    if [[ ${SIMULATION_DISTANCE+x} ]]; then
        sed -E -i "s/simulation-distance=(.*)/simulation-distance=$SIMULATION_DISTANCE/" "server.properties"
    fi

    if [[ ${SPAWN_ANIMALS+x} ]]; then
        sed -E -i "s/spawn-animals=(.*)/spawn-animals=$SPAWN_ANIMALS/" "server.properties"
    fi

    if [[ ${SPAWN_MONSTERS+x} ]]; then
        sed -E -i "s/spawn-monsters=(.*)/spawn-monsters=$SPAWN_MONSTERS/" "server.properties"
    fi

    if [[ ${SPAWN_NPCS+x} ]]; then
        sed -E -i "s/spawn-npcs=(.*)/spawn-npcs=$SPAWN_NPCS/" "server.properties"
    fi

    if [[ ${SPAWN_PROTECTION+x} ]]; then
        sed -E -i "s/spawn-protection=(.*)/spawn-protection=$SPAWN_PROTECTION/" "server.properties"
    fi

    if [[ ${SYNC_CHUNK_WRITES+x} ]]; then
        sed -E -i "s/sync-chunk-writes=(.*)/sync-chunk-writes=$SYNC_CHUNK_WRITES/" "server.properties"
    fi

    if [[ ${TEXT_FILTERING_CONFIG+x} ]]; then
        sed -E -i "s/text-filtering-config=(.*)/text-filtering-config=$TEXT_FILTERING_CONFIG/" "server.properties"
    fi

    if [[ ${USE_NATIVE_TRANSPORT+x} ]]; then
        sed -E -i "s/use-native-transport=(.*)/use-native-transport=$USE_NATIVE_TRANSPORT/" "server.properties"
    fi

    if [[ ${VIEW_DISTANCE+x} ]]; then
        sed -E -i "s/view-distance=(.*)/view-distance=$VIEW_DISTANCE/" "server.properties"
    fi

    if [[ ${WHITE_LIST+x} ]]; then
        sed -E -i "s/white-list=(.*)/white-list=$WHITE_LIST/" "server.properties"
    fi
}

init_player_lists

if [[ "$SERVER_CONFIG_AUTO_MODE" == "true" ]]; then
    init_server_properties
fi