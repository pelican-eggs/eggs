# Space Engineers Torch Server

### Author & Contributers
| Name        | Github Profile  |
| ------------- |-------------|
|   gOOvER   | https://github.com/gOOvER |


## Description
Torch is the successor to SE Server Extender and gives server admins the tools they need to keep their Space Engineers servers running smoothly. It features a user interface with live management tools and a plugin system so you can run your server exactly how you'd like. Torch is still in early development so there may be bugs and incomplete features.

**NOTE**
Because of the winetricks installation, the install process could take some time. Likewise, the first start of the server takes its time.

**SPECIAL NOTE**
When installed, the Server loads a base World and config from this repo. ONLY THIS WORLD IS SUPPORTED.
Everything which is not defined in a variable could be edited directy in the config file /config/SpaceEngineers-Dedicated.cfg and config/Saves/World/Sandbox.sbc

## Server Ports

Default server ports are listed below, but the Main, STEAM and API port can be any port. 

| Port  | default |
|-------|---------|
| Game  | 27016   |
| Steam | 8766    |
| API   | 8081    |

## Minumum server settings

### RAM

This server requires about 6GB.

Based on the information provided by the developer: [See here](https://www.spaceengineersgame.com/dedicated-servers/)

### Disk

This server uses about 7GB of diskspace.

### Updating

Because some logic in this egg changed. Already made servers will manualy have to be updated.

**This has to be done manual for every server!!**

1. Stop the server.
2. Update the already impored egg to the newer version.
3. Change the startup (on the startup tab on the admin side) of the already made server's to: `export WINEDLLOVERRIDES="mscoree=n,b;mshtml=n,b"; wine /home/container/Torch.Server.exe -noupdate -nogui -console`
4. Change on the same tab (bottom left) the docker image to: `ghcr.io/parkervcp/yolks:wine_latest`
5. Change the contence of the variable `WINETRICKS_RUN` to: `vcrun2022 corefonts dotnet48`
6. Remove the `.wine` and `.cache` folder.
7. Start the server again.
