#!/bin/bash
##################################
echo Starting up....
echo "Startup Type: (normal/rotate)"
echo Detected $STARTUP_TYPE
if [ -f "keys/key.txt" ]; then
echo "Key file detected..."
export MINIO_ACCESS_KEY=`cat keys/key.txt`
else
echo minioadmin > keys/key.txt
echo "No key file detected...Preparing First Time Boot"
fi
if [ -f "keys/secret.txt" ]; then
echo "Secret file detected..."
export MINIO_SECRET_KEY=`cat keys/secret.txt`
else
echo minioadmin > keys/secret.txt
echo "No secret file detected...Preparing First Time Boot"
fi
if [ -f "keys/oldsecret.txt" ]; then
echo "Old secret file detected..."
export MINIO_SECRET_KEY_OLD=`cat keys/oldsecret.txt`
fi
if [ -f "keys/oldkey.txt" ]; then
echo "Old key file detected..."
export MINIO_ACCESS_KEY_OLD=`cat keys/oldkey.txt`
fi
if [ -f "keys/justrotated.txt" ]; then
echo "Previous key rotation detected...."
echo "Clearing the Lanes...."
unset MINIO_ACCESS_KEY_OLD
unset MINIO_SECRET_KEY_OLD
STARTUP_TYPE=normal
rm keys/justrotated.txt
rm keys/oldsecret.txt
rm keys/oldkey.txt
fi
##########################################
if [ -z "$STARTUP_TYPE" ] || [ "$STARTUP_TYPE" == "rotate" ]; then
touch keys/justrotated.txt
export MINIO_ACCESS_KEY_OLD=$MINIO_ACCESS_KEY
echo $MINIO_ACCESS_KEY_OLD > keys/oldkey.txt
export MINIO_SECRET_KEY_OLD=$MINIO_SECRET_KEY
echo $MINIO_SECRET_KEY_OLD > keys/oldsecret.txt
export MINIO_ACCESS_KEY=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
echo $MINIO_ACCESS_KEY > keys/key.txt
export MINIO_SECRET_KEY=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
echo $MINIO_SECRET_KEY > keys/secret.txt
echo Your New Access Key is: $MINIO_ACCESS_KEY
echo Your New Secret Key is: $MINIO_SECRET_KEY
echo Your Old Access Key is: $MINIO_ACCESS_KEY_OLD
echo Your Old Access Key is: $MINIO_SECRET_KEY_OLD
echo Booting...
./minio server data --address 0.0.0.0:$SERVER_PORT
else
./minio server data --address 0.0.0.0:$SERVER_PORT
fi
