# TShock

TShock provides Terraria servers with server-side characters, anti-cheat, and community management tools. https://tshock.co/

### From their GitHub
TShock is a toolbox for Terraria servers and communities. That toolbox is jam packed with anti-cheat tools, server-side characters, groups, permissions, item bans, tons of commands, and limitless potential. It's one of a kind.

### Server Ports
TShock, like Terraria, only requires a single port to run. The default is 7777

| Port    | default |
|---------|---------|
| Game    | 7777    |

#### Plugins may require ports to be added to the server.

### Extra Information
If you want to download mods in the console, the startup command has to be changed.

New startup:  
`mono TerrariaServer.exe -ip 0.0.0.0 -port {{SERVER_PORT}} -maxplayers {{MAX_PLAYERS}}`

This will remove the autocreate function, and will thus allow you to download mods and generate world.  
Afterwards, you can change it back with the correct world name to start automatic. Word name is set in the configuration panel.