#!/bin/bash
cd /home/container

# Make internal Docker IP address available to processes.
export INTERNAL_IP=`ip route get 1 | awk '{print $NF;exit}'`

# Modify the configuration variables using sed
pushd holdfastnaw-dedicated/configs/
if [ -f "$SERVER_CONFIG_PATH" ]; then
	echo "Found configuration file - replacing variables"
	sed -i "s/^server_name .*/server_name $(printf '%s\n' "$SERVER_NAME" | sed -e 's/[\/&]/\\&/g')/g" "$SERVER_CONFIG_PATH"
	sed -i "s/^maximum_players .*/maximum_players $(printf '%s\n' "$PLAYERS" | sed -e 's/[\/&]/\\&/g')/g" "$SERVER_CONFIG_PATH"
	sed -i "s/^server_welcome_message .*/server_welcome_message $(printf '%s\n' "$MOTD" | sed -e 's/[\/&]/\\&/g')/g" "$SERVER_CONFIG_PATH"
	sed -i "s/^server_region .*/server_region $(printf '%s\n' "$REGION" | sed -e 's/[\/&]/\\&/g')/g" "$SERVER_CONFIG_PATH"
	sed -i "s/^server_admin_password .*/server_admin_password $(printf '%s\n' "$ADMIN_PASS" | sed -e 's/[\/&]/\\&/g')/g" "$SERVER_CONFIG_PATH"
	sed -i "s/^#\{0,1\}server_password .*/server_password $(printf '%s\n' "$SERVER_PASS" | sed -e 's/[\/&]/\\&/g')/g" "$SERVER_CONFIG_PATH"
	sed -i "s/^server_port .*/server_port $(printf '%s\n' "$SERVER_PORT" | sed -e 's/[\/&]/\\&/g')/g" "$SERVER_CONFIG_PATH"
	sed -i "s/^steam_communications_port .*/steam_communications_port $(printf '%s\n' "$SERVER_COMM_PORT" | sed -e 's/[\/&]/\\&/g')/g" "$SERVER_CONFIG_PATH"
	sed -i "s/^steam_query_port .*/steam_query_port $(printf '%s\n' "$SERVER_QUERY_PORT" | sed -e 's/[\/&]/\\&/g')/g" "$SERVER_CONFIG_PATH"
else
	echo "Configuration file not found: $SERVER_CONFIG_PATH"
fi
popd

# Replace Startup Variables
MODIFIED_STARTUP=$(echo $(echo -e ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g'))
START_COMMAND=$(echo -e ${MODIFIED_STARTUP})
echo -e ":/home/container$ ${START_COMMAND}"

# Run the Server
eval ${MODIFIED_STARTUP}