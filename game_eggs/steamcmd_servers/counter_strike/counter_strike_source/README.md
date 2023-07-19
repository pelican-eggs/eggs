# Counter-Strike: Source

## From their [Steam Depot](https://steamdb.info/app/232330/)

A link to the site that you download the server files from.

## [Documentation](https://github.com/parkervcp/eggs/blob/master/README.md)

A link to relevent documentation for the server.

The description of the server usually provided by the game/server maker.
<!--Example: Parkers Pterodactyl Eggs Repo. Server eggs for the Pterodactyl management panel-->

## Install notes

To get a persistent server (server that appears on the server list), you need to get a [Steam Server Login Token](https://steamcommunity.com/dev/managegameservers), it's not required though.

## Installation/System Requirements
<!--Make changes to reflect the server minimum/recommended hardware specs-->
|  | Bare Minimum | Recommended |
|---------|---------|---------|
| Processor | Does not support ARM(?) | - |
| RAM | 512MB | 1GB |
| Storage | 3GB | 6GB |
| Network | 1Mbit/s | 5Mbit/s |
| Game Ownership | No | See **Install Notes** |

## Server Ports

Ports required to run the server in a table format.

| Port    | default |
|---------|---------|
| Game    | 27015   |
| Source TV | 27020 |
| Client  | 27005   |
| Steam   | 26900   |

### Notes

27015 is the default port, but any port can be used.
The only required port is the Game port, server can run perfectly fine without other allocations.
