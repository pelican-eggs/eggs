## this is a simple script to validate a download url actaully exists

if [ ! -z "${DOWNLOAD_URL}"]; then 
    if curl --output /dev/null --silent --head --fail ${DOWNLOAD_URL}; then
        echo -e "link is valid. setting download link to ${DOWNLOAD_URL}"
        DOWNLOAD_LINK=${DOWNLOAD_URL}
    else        
        echo -e "link is invalid closing out"
        exit 2
    fi
fi