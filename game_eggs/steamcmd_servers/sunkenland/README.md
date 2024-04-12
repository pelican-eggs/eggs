# Sunkenland


## [Documentation](https://www.sunkenlandgame.com/post/dedicated-server-user-manual)

Sunkenland is a Waterworld-themed survival game. Explore sunken cities, build your base, craft items, trade, and fight pirates as you struggle to survive in an aquatic post-apocalypse world plagued by hunger and violence.

## Install notes

To launch properly, the Sunkenland dedicated server software requires a map. However, the software does not generate the map itself.

This egg includes a default map created through the game. If the user desires a different map, they must create it through Sunkenland and import it to the server manually.

To locate your save files on Windows, go to the following directory:
`%USERPROFILE%\AppData\LocalLow\Vector3 Studio\Sunkenland\Worlds`

On the server, you can find the map here:
`/.wine/drive_c/users/container/AppData/LocalLow/Vector3 Studio/Sunkenland/Worlds` 

**Remember** to change the `WORLD_GUID` variable, if you upload a new world to your server! Otherwise the server will crash upon launching it.

## Installation/System Requirements
<!--Make changes to reflect the server minimum/recommended hardware specs-->
|  | Bare Minimum | Recommended |
|---------|---------|---------|
| Game Ownership | *Server can start without it* | *Game is needed for creating custom maps* |

## Server Ports

Ports required to run the server in a table format.

| Port    | default |
|---------|---------|
| Game Port | ????? |
| Query Port | 27015 |

### Notes
- There's no strict "server name" variable. It's tied to the World/Map Name. The install script is modified to rename the folder to whatever the users sets as `SERVER_NAME`.

