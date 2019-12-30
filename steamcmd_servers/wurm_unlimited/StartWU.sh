#!/bin/bash

function download_ml {
	echo "Downloading and Extracting Mod Launcher"
	# Grabbing latest Mod Launcher tag, if desired
	if [ "$SERVER_MODLOADER_VERSION" == "latest" ]; then
	    SERVER_MODLOADER_VERSION=$(curl -L -s -H 'Accept: application/json' https://github.com/ago1024/WurmServerModLauncher/releases/latest | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/' | sed -e 's/[^0-9,\.]*//g')
	fi
	
	# Downloading the Mod Launcher
	cd /home/container
	mkdir -p ./downloads
	cd downloads
	curl -sSL -o server-modlauncher.zip https://github.com/ago1024/WurmServerModLauncher/releases/download/v${SERVER_MODLOADER_VERSION}/server-modlauncher-${SERVER_MODLOADER_VERSION}.zip
	curl -sSL -o 7za  https://github.com/develar/7zip-bin/raw/master/linux/x64/7za
	mv ./server-modlauncher.zip ../server-modlauncher.zip
	chmod +x ./7za
	
	cd /home/container
	
	/home/container/downloads/7za x -tzip ./server-modlauncher.zip -aoa
	
	rm server-modlauncher.zip
	rm -rf ./downloads/*
	
	# Installing the launcher
	cd /home/container
	chmod +x patcher.sh
	sh ./patcher.sh
	
	if [ -f "/home/container/WurmServerLauncher-patched" ]; then
		echo ${SERVER_MODLOADER_VERSION} > /home/container/WU-Launcher.version
	fi
}

## Installing the Mod Launcher

# Checking if ML is wanted
if [ "$SERVER_MODLOADER_VERSION" != "none" ]; then
	
	# See if we've got it installed already
	if [ ! -f "/home/container/WU-Launcher.version" ]; then
		download_ml
	else
		# Get currently installed ML version
		current_ml=$(</home/container/WU-Launcher.version)
		
		if [ "$SERVER_MODLOADER_VERSION" != "$current_ml" ]; then
			download_ml
		fi
	fi
	
	cd /home/container
	./WurmServerLauncher-patched "$@"
else
	cd /home/container
	
	# Make sure we are using the unpatched binary
	rm ./WurmServerLauncher
	cp ./backup/WurmServerLauncher ./
	
	./WurmServerLauncher "$@"
fi