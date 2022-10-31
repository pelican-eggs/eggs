# Stormworks: Build and Rescue

Join a world where you design, create and pilot your own air sea rescue service. Release your inner hero as you battle fierce storms out at sea to rescue those in need.

## Configuration warning

Due to the way the Stormworks configuration file is formatted and the way Pterodactyl handles config file replacement this egg cannot be configured by Pterodactyl.  A config file is created in the container home directory (`/home/container/server_config.xml`) and must be manually updated for any changes, **INCLUDING THE PORT NUMBER**.  This egg will not work after installation and you **MUST** edit the `server_config.xml` file manually to use anything other than the default settings.

For more information about the configuration file issue see the [Github issue](https://github.com/parkervcp/eggs/issues/522#issuecomment-652514654).

## Server Ports

Stormworks requires 3 consecutive ports in order to run.  The default ports are shown below.  Using non-default ports is possible however they must remain consecutive.

| Port | default |
|------|---------|
| Game | 25564   |
| Game | 25565   |
| Game | 25566   |

## Console output

Due to the move to the wine staging branch, the console will no longer spit out updates infinitely. It will remain consistant, and update according to player-count, vehicles loaded, etc. However, there is one thing to note. It seems that the console will misreport TPS, always appearing at a steady 60-64. Ignore this reading. If you wish to check your server TPS, join your server and press the backquote/tilda key (`/~). 
