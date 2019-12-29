#!/bin/bash

function download_ml {
	# Grabbing latest Mod Launcher tag, if desired
	#if [ "$SERVER_MODLOADER_VERSION" == "latest"]; then
	#    SERVER_MODLOADER_VERSION=$(curl -L -s -H 'Accept: application/json' https://github.com/ago1024/WurmServerModLauncher/releases/latest | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/' | sed -e 's/[^0-9,\.]*//g')
	#fi
	
	# Downloading the Mod Launcher
	cd /tmp
	curl -sSL -o server-modlauncher.zip https://github.com/ago1024/WurmServerModLauncher/releases/download/v${SERVER_MODLOADER_VERSION}/server-modlauncher-${SERVER_MODLOADER_VERSION}.zip
	echo ${SERVER_MODLOADER_VERSION} > /home/container/WU-Launcher.version
	unzip server-modlauncher.zip -o -d /mnt/server
	
	# Installing the launcher
	cd /mnt/server
	chmod +x patcher.sh
	sh ./patcher.sh
}

## Installing the Mod Launcher

# Checking if ML is wanted
if [ "$SERVER_MODLOADER_VERSION" != "none" ]; then
	
	# See if we've got it installed already
	if [ ! -f "/home/container/WU-Launcher.version" ]; then
		touch /home/container/WU-Launcher.version
		
		download_ml
	else
		# Get currently installed ML version
		current_ml=$(</home/container/WU-Launcher.version)
		
		if [ -z "$current_ml" ] || [ ! "$SERVER_MODLOADER_VERSION" == "$current_ml" ]; then
			download_ml
		fi
	fi
	
	cd /mnt/server
	./WurmServerLauncher-patched "$@"
else
	cd /mnt/server
	./WurmServerLauncher "$@"
fi