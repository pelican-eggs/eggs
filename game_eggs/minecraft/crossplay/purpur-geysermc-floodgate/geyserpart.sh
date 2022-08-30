
if [ \"$GEYSER_BUILD\" == \"latest-stable\" ]; then
    DOWNLOAD_URL=https:\/\/ci.opencollab.dev\/job\/GeyserMC\/job\/Floodgate\/job\/master\/lastStableBuild\/artifact\/spigot\/build\/libs\/Geyser-Spigot.jar
elif [ \"$GEYSER_BUILD\" == \"latest-successful\" ]; then
    DOWNLOAD_URL=https:\/\/ci.opencollab.dev\/job\/GeyserMC\/job\/Floodgate\/job\/master\/lastSuccessfulBuild\/artifact\/spigot\/build\/libs\/Geyser-Spigot.jar
else\r\n\tDOWNLOAD_URL=https:\/\/ci.opencollab.dev\/job\/GeyserMC\/job\/Floodgate\/job\/master\/lastStableBuild\/artifact\/spigot\/build\/libs\/floodgate-spigot.jar
fi
GEYSER_STABLE_OR_SUCCESSFUL=`echo \"${GEYSER_BUILD}\" | grep -o -e stable -e succsessful`


echo -e \'Downloading latest ${GEYSER_STABLE_OR_SUCCESSFUL} build with curl -o ${DOWNLOAD_URL}\'
curl -o \"${DOWNLOAD_URL}\"
