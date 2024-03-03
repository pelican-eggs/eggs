# FTB Modpacks

A generic service to pull FTB modpacks from api.modpacks.ch.
There are 2 ways to install a server through this service.
The first method only requires you to know the modpacks name and version.
The second method requires you to know the id for both the modpack and version in the api.

## Method 1 (Recommended)

- FTB_SEARCH_TERM: the modpack name to query for, must be at least 4 characters long.
  EX: for FTB: Interactions you would do "interactions".
- FTB_VERSION_STRING: the string version that you want to install.
  EX: for FTB: Interactions 2.0.2, you would put "2.0.2".

## Method 2

- FTB_MODPACK_ID: the id that directs to the modpack in the api.
  EX: for FTB: Interactions the id would be "5". `https://api.modpacks.ch/public/modpack/5`
- FTB_MODPACK_VERSION_ID: the version id in the api.
  EX: for FTB: Interactions 2.0.2 the id is "86". `https://api.modpacks.ch/public/modpack/5/86`

**NOTE**
**Not all FTB packs come with a server.properties file, due to this the server.properties file
may not get updated with the correct ip address and port at first launch.
Please restart the server after first launch to fix this.**

## Neoforged
If you have trouble using an neoforge pack, make sure to select the latest java.

## Server Ports

The minecraft server requires a single port for access (default 25565) but plugins may require extra ports to enabled for the server.

| Port  | default |
|-------|---------|
| Game  | 25565   |
