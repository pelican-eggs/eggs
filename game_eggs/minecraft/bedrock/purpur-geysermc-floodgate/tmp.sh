#!\/bin\/ash
# Paper Installation Script
#
# Server Files: \/mnt\/server
PROJECT=purpur

if [ -n \"${DL_PATH}\" ]; then
echo -e \"Using supplied download url: ${DL_PATH}\"
DOWNLOAD_URL=`eval echo $(echo ${DL_PATH} | sed -e 's\/{{\/${\/g' -e 's\/}}\/}\/g')`
else
VER_EXISTS=`curl -s https:\/\/api.purpurmc.org\/v2\/${PROJECT} | jq -r --arg VERSION $MINECRAFT_VERSION '.versions[] | contains($VERSION)' | grep true`
LATEST_VERSION=`curl -s https:\/\/api.purpurmc.org\/v2\/${PROJECT} | jq -r '.versions' | jq -r '.[-1]'`

if [ \"${VER_EXISTS}\" == \"true\" ]; then
echo -e \"Version is valid. Using version ${MINECRAFT_VERSION}\"
else
echo -e \"Using the latest ${PROJECT} version\"
MINECRAFT_VERSION=${LATEST_VERSION}
fi

BUILD_EXISTS=`curl -s https:\/\/api.purpurmc.org\/v2\/${PROJECT}\/${MINECRAFT_VERSION} | jq -r --arg BUILD ${BUILD_NUMBER} '.builds.all | tostring | contains($BUILD)' | grep true`
LATEST_BUILD=`curl -s https:\/\/api.purpurmc.org\/v2\/${PROJECT}\/${MINECRAFT_VERSION} | jq -r '.builds.latest'`

if [ \"${BUILD_EXISTS}\" == \"true\" ]; then
echo -e \"Build is valid for version ${MINECRAFT_VERSION}. Using build ${BUILD_NUMBER}\"
else
echo -e \"Using the latest ${PROJECT} build for version ${MINECRAFT_VERSION}\"
BUILD_NUMBER=${LATEST_BUILD}
fi

JAR_NAME=${PROJECT}-${MINECRAFT_VERSION}-${BUILD_NUMBER}.jar

echo \"Version being downloaded\"
echo -e \"MC Version: ${MINECRAFT_VERSION}\"
echo -e \"Build: ${BUILD_NUMBER}\"
echo -e \"JAR Name of Build: ${JAR_NAME}\"
DOWNLOAD_URL=https:\/\/api.purpurmc.org\/v2\/${PROJECT}\/${MINECRAFT_VERSION}\/${BUILD_NUMBER}\/download
fi

cd \/mnt\/server

echo -e \"Running curl -o ${SERVER_JARFILE} ${DOWNLOAD_URL}\"

if [ -f ${SERVER_JARFILE} ]; then
mv ${SERVER_JARFILE} ${SERVER_JARFILE}.old
fi

curl -o ${SERVER_JARFILE} ${DOWNLOAD_URL}

if [ ! -f server.properties ]; then
    echo -e \"Downloading MC server.properties\"
    curl -o server.properties https:\/\/raw.githubusercontent.com\/parkervcp\/eggs\/master\/minecraft\/java\/server.properties
fi",