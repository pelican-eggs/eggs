# Enshrouded

### Game Description

Enshrouded is a game of survival, crafting, and Action RPG combat, set within a sprawling voxel-based continent. As you journey across the mountains and deserts of an open world, you are free to choose your path and shape your destiny.

Ignite the Ancient power of the Flame, and piece together the fragments of a story that unfolds below the surface.

### Usefull links

Homepage: https://enshrouded.com/
Steam: https://store.steampowered.com/app/1203620/Enshrouded/
Wiki: https://enshrouded.wiki.gg/wiki/Enshrouded_Wiki
Discord: https://discord.gg/enshrouded

### Author & Contributers
| Name        | Github Profile  | Buy me a Coffee |
| ------------- |-------------|-------------|
|   Vapok   | https://github.com/Vapok | https://www.buymeacoffee.com/vapok |
|   QuintenQVD0   | https://github.com/QuintenQVD0 |  |
|   gOOvER   | https://github.com/gOOvER | ![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/B0B351D0Q)  |

### Server Ports

Enshrouded requires up to 2 ports. Queryport must be GAMEPORT +1 

| Port    | default       |
|---------|---------------|
| Game    |     15636     |
| Query   |     15637     |

### Configuration

When browsing to the installation path of the dedicated server in Windows as described in the article [Multiplayer and Server Hosting](https://enshrouded.zendesk.com/hc/en-us/sections/16050842957085-Multiplayer-and-Server-Hosting) and after starting the enshrouded\_server.exe once, a new file is created called “enshrouded\_server.json”. It contains the following entries:
```json
{

    "name": "Enshrouded Server",
    "password": "",
    "saveDirectory": "./savegame",
    "logDirectory": "./logs",
    "ip": "0.0.0.0",
    "gamePort": 15636,
    "queryPort": 15637,
    "slotCount": 16

}
```
*   Under “name” the name of the dedicated server can be defined as it will appear in the server list for players of Enshrouded.
    *   Note: as all players can see the names of the servers, please use a non-offensive name for the server.
*   In the entry “password” a password can be defined that players need to enter before being allowed to join the server.
    *   It is highly recommended to set a password. Every player can see the server and can access it, if no password is set. At this point there is no rights management for the server other than the password. We will work on better admin tools and rights management in the near future.
*   The directory for the world saved on the dedicated server can be set in the “saveDirectory” setting. By default, the server will save in a subfolder “…/savegame”
*   If needed, a specific folder for storing log-files can be set in the “logDirectory” setting. If nothing is changed, the server will save the latest log into the directory “…/logs” and archive previous log-files automatically in the folder “…/logs/backup”
*   If needed for internal network configurations, the IP of the server can be set in the “ip” setting.
*   “gamePort” and “queryPort” can be changed to match your firewall settings.
*   “slotCount” allows the definition of the maximum of player slots.
    *   The slot count must be a number between 1 and 16.
    *   Note: each slot (player) will increase the impact on the performance of the server. If CPU or the RAM are a bottleneck, lowering the max of available player slots can help mitigating the stress for the server.

### Installation/System Requirements

|           | Recommended  | Extra info  |
|-----------|--------------|-------------|
| Processor | Recent x86/64 (AMD/Intel) processor. | You need min 4 Cores for the Server. |
| RAM       |  4-6 GB     |
| Storage   |  30 GB (or more, depending on save size or frequency) |

### Server not showing in Serverlist?

The fact that the server is not displayed in the server list is a known problem.

As a workaround, you can add the server as a favourite via IP:port in the Steam server browser.
The server should then be at the top of the ingame server list