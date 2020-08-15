## this is a simple script to use the github API for release versions.
## this requires the egg has a variable for GITHUB_PACKAGE, VERSION and MATCH (match is to match the filename in some way)
## this supports using oauth/personal access tokens via GITHUB_USER and GITHUB_OAUTH_TOKEN (both are required.)
## if you are getting hit with GitHub API limit issues then you need to have the user and token set.

if [ -z "${GITHUB_USER}" ] && [ -z "${GITHUB_OAUTH_TOKEN}" ] ; then
    echo -e "using anon api call"
else
    echo -e "user and oauth token set"
    alias curl='curl -u ${GITHUB_USER}:${GITHUB_OAUTH_TOKEN} '
fi

## get release info and download links
LATEST_JSON=$(curl --silent "https://api.github.com/repos/${GITHUB_PACKAGE}/releases/latest")
RELEASES=$(curl --silent "https://api.github.com/repos/${GITHUB_PACKAGE}/releases")

if [ -z "${VERSION}" ] || [ "${VERSION}" == "latest" ]; then
    DOWNLOAD_LINK=$(echo ${LATEST_JSON} | jq .assets | jq -r .[].browser_download_url | grep -i ${MATCH})
else
    VERSION_CHECK=$(echo ${RELEASES} | jq -r --arg VERSION "${VERSION}" '.[] | select(.tag_name==$VERSION) | .tag_name')
    if [ "${VERSION}" == "${VERSION_CHECK}" ]; then
        DOWNLOAD_LINK=$(echo ${RELEASES} | jq -r --arg VERSION "${VERSION}" '.[] | select(.tag_name==$VERSION) | .assets[].browser_download_url' | grep -i ${MATCH})
    else
        echo -e "defaulting to latest release"
        DOWNLOAD_LINK=$(echo ${LATEST_JSON} | jq .assets | jq -r .[].browser_download_url)
    fi
fi