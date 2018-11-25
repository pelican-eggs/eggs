# Rigs of Rods Server
### Description
The Rigs of Rods Server is a game server for [Rigs of Rods](https://www.rigsofrods.org/). It is compatible with RoR clients version 0.4.7.0. 

### Install notes
By default, if neither `-lan` nor `-inet` is used the server will try to register at the master server and fall back to LAN mode in case it fails. See [Multiplayer server setup](http://docs.rigsofrods.org/gameplay/multiplayer-server-setup/).

### Bandwidth used by the server
The RoR server uses large amounts of bandwidth. The general formula to compute bandwidth is:

-DOWNLOAD: `maxclients * 64kbit/s`

-UPLOAD : `maxclients * (maxclients-1) * 64kbit/s`

That translates into:

-4 clients: `256kbit/s` download, `768kbit/s` upload <= will nearly saturate most ADSL links
-8 clients: `512kbit/s` download, `3.5Mbit/s` upload
-16 clients: `1Mbit/s` download, `15Mbit/s` upload
-32 clients: `2Mbit/s` download, `64Mbit/s` upload <= will nearly saturate a 100Mbit/s LAN!


### Server Ports
Ports required to run the server.

| Port    | default |
|---------|---------|
| Game    | 12000   |
