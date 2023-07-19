# Pavlov VR

Pavlov VR is a multiplayer shooter in VR with heavy focus on community features. Realistic reloading features and fast-paced combat as part of the core experience.

## Recommended server settings

### Minimum RAM

This server requires about 2048M to run. A 3.2 GHz core will support approximately 24 players. Since Pavlov VR is single threaded, faster clock-speeds will mean higher performance.

### Multiple Servers on the same host

If you are running multiple servers and have set additional ports (see [Running multiple servers](http://wiki.pavlov-vr.com/index.php?title=Dedicated_server#Running_multiple_servers_on_one_host)) then you need to allow access to the defined port plus the port 400 higher. So if you use 7000 as your port, then UDP 7000 and 7400 need to be open.

### API key

For your server to show up in the server list, there is now a requirement to have an ApiKey issued by vankrupt. This is to prevent DOS attacks against the master server

Get the key by going [here](https://pavlov-ms.vankrupt.com/servers/v1/key) and using your mobile number to get a SMS (note that there have been reported failures of this SMS system for non-US mobiles. In this case DM davevillz your mobile and ask for a key).


### Steam Workshop

When downloading a large map from the steam workshop make sure your node has enough RAM assigned to store the map files in its tmpfs! This requires you to modify your wings configuration to have the tmpfs_size value increased.

Additionally, due to the way Pavlov stores workshop maps in the temp directory, the only way to persistently keep workshop maps is to create a mount for /tmp/workshop. For assistance with mounts, please visit the following link - [Using Mounts Pterodactyl](https://pterodactyl.io/guides/mounts.html)

For additional help, please see the following - [Dedicated Server Wiki](http://wiki.pavlov-vr.com/index.php?title=Dedicated_server)

## Server Ports

| Port  | default |
|-------|---------|
| Game  |  7777   |
| Game  |  8177   |
| RCON  |  8188   |
