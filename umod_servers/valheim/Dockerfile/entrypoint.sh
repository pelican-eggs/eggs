#!/bin/bash
cd /home/container

#Umod
export PATH="$PATH:$HOME/.dotnet/tools"
echo "PATH=\$PATH:\$HOME/.dotnet/tools; export PATH" >> ~/.profile

# fixes Couldn't find a valid ICU package installed on the system
export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1
echo "DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1; export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT" >> ~/.profile

# Update Valheim Server
umod update core apps extensions --patch-available --strict --validate --prerelease

#Run Server
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}

# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"

# Run the Server
${MODIFIED_STARTUP}
