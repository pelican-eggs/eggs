# Pavlov VR
Pavlov VR is a multiplayer shooter in VR with heavy focus on community features. Realistic reloading features and fast paced combat as part of the core experience.

## Recommended server settings
### Minimum RAM
This server requires about 2048M to run. A 3.2 GHz core will support approximately 24 players. Since Pavlov VR is single threaded, faster clockspeeds will mean higher performance.

### Tickrate
For stable results, please use a minimum of 50 and a maximum of 120.

### Multiple Servers on the same host
If you are running multiple servers and have set additional ports (see http://wiki.pavlov-vr.com/index.php?title=Dedicated_server#Running_multiple_servers_on_one_host) then you need to allow access to the defined port plus the port 400 higher. So if you use 7000 as your port, then UDP 7000 and 7400 need to be open. 

For additional help, please see the following - http://wiki.pavlov-vr.com/index.php?title=Dedicated_server

### Steam Workshop
When downloading a large map from the steam workshop make sure your node has enough RAM assigned to store the map files in its tmpfs! This requires you to modify your wings configuration to have the tmpfs_size value increased.

## Server Ports
| Port  | default |
|-------|---------|
| Game  |  7777   |
| Game  |  8177   |
| RCON  |  8188   |
