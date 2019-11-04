## only needs to have the file with a file passed into it to get the filetype.
## only supports tar.gz/xz and zip currently for unpacking.
## The value for ${DOWNLOAD_LINK##*/} is derived from DOWNLOAD_LINK
## if the download link is https://launcher.mojang.com/v1/objects/3dc3d84a581f14691199cf6831b71ed1296a9fdf/server.jar then the ##*/ is server.jar

FILETYPE=$(file -F ',' ${DOWNLOAD_LINK##*/} | cut -d',' -f2 | cut -d' ' -f2)
if [ "$FILETYPE" == "gzip" ]; then
    tar xzvf ${DOWNLOAD_LINK##*/}
elif [ "$FILETYPE" == "Zip" ]; then
    unzip ${DOWNLOAD_LINK##*/}
elif [ "$FILETYPE" == "XZ" ]; then
    tar xvf ${DOWNLOAD_LINK##*/}
else
    echo -e "unknown filetype. Exeting"
    exit 2 
fi