#!/bin/bash
##################################
echo "$(tput setaf 2)Starting up...."
echo "Startup Type: $(tput setaf 2)$STARTUP_TYPE"
if [ -f "keys/key.txt" ]; then
echo "$(tput setaf 2)Key file detected..."
export MINIO_ROOT_USER=`cat keys/key.txt`
else
echo minioadmin > keys/key.txt
echo "$(tput setaf 3)No key file detected...Preparing First Time Boot"
fi
if [ -f "keys/secret.txt" ]; then
echo "$(tput setaf 2)Secret file detected..."
export MINIO_ROOT_PASSWORD=`cat keys/secret.txt`
else
echo minioadmin > keys/secret.txt
echo "No secret file detected...Preparing First Time Boot"
fi
if [ -f "keys/oldsecret.txt" ]; then
echo "$(tput setaf 1)Old secret file detected..."
export MINIO_ROOT_PASSWORD_OLD=`cat keys/oldsecret.txt`
fi
if [ -f "keys/oldkey.txt" ]; then
echo "$(tput setaf 1)Old key file detected..."
export MINIO_ROOT_USER_OLD=`cat keys/oldkey.txt`
fi
if [ -f "keys/justrotated.txt" ]; then
echo "$(tput setaf 3)Previous key rotation detected...."
echo "$(tput setaf 3)Clearing the Lanes...."
unset MINIO_ROOT_USER_OLD
unset MINIO_ROOT_PASSWORD_OLD
echo "$(tput setaf 2)Lanes Cleared!"
STARTUP_TYPE=normal
rm keys/justrotated.txt
rm keys/oldsecret.txt
rm keys/oldkey.txt
fi

##########################################
if [ -z "$STARTUP_TYPE" ] || [ "$STARTUP_TYPE" == "update" ]; then
echo "$(tput setaf 3)Performing update...."
echo "$(tput setaf 1)Removing old minio version"
rm minio
echo "$(tput setaf 3)Downloading new minio version"
export ARCH=$([[ "$(uname -m)" == "x86_64" ]] && echo "amd64" || echo "arm64")
wget https://dl.min.io/server/minio/release/linux-$ARCH/minio
chmod +x minio
echo "$(tput setaf 2)Update Complete"
fi
##########################################
if [ -z "$STARTUP_TYPE" ] || [ "$STARTUP_TYPE" == "rotate" ]; then
touch keys/justrotated.txt
export MINIO_ROOT_USER_OLD=$MINIO_ROOT_USER
echo $MINIO_ROOT_USER_OLD > keys/oldkey.txt
export MINIO_ROOT_PASSWORD_OLD=$MINIO_ROOT_PASSWORD
echo $MINIO_ROOT_PASSWORD_OLD > keys/oldsecret.txt
export MINIO_ROOT_USER=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
echo $MINIO_ROOT_USER > keys/key.txt
export MINIO_ROOT_PASSWORD=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
echo $MINIO_ROOT_PASSWORD > keys/secret.txt
echo "Your New Access Key is: $(tput setaf 2)$MINIO_ROOT_USER"
echo "Your New Secret Key is: $(tput setaf 2)$MINIO_ROOT_PASSWORD"
echo "Your Old Access Key is: $(tput setaf 3)$MINIO_ROOT_USER_OLD"
echo "Your Old Access Key is: $(tput setaf 3)$MINIO_ROOT_PASSWORD_OLD"
echo "$(tput setaf 2)Booting..."
./minio server data --console-address ":$SERVER_PORT"
else
echo "$(tput setaf 2)Booting..."
./minio server data --console-address ":$SERVER_PORT"
fi
