# Rising World Unity Version

Rising World is a voxel based open-world sandbox game, featuring a procedurally generated world, playable in single and multi-player.

## Server Ports

Rising World requires up to 3 ports.

* The RCON port is optional
* Game ports require both TCP and UDP
* The server port can be set in the server.properties file (see "Server_Port"). By default, the server uses port 4255 TCP and UDP. The query port (which is required for the server to show up in the server list) is always serverport-1 TCP (so when using the default server port, it's 4254 accordingly).


| Port    | default       |
|---------|---------------|
| Game    |  4255         |
| Query   |  4254         |
| RCON    |  4253         |

