# tModLoader
### From their [GitHub](https://github.com/tModLoader/tModLoader)
tModLoader is essentially a mod that provides a way to load your own mods without having to work directly with Terraria's source code itself. This means you can easily make mods that are compatible with other people's mods, save yourself the trouble of having to decompile and recompile Terraria.exe, and escape from having to understand all of the obscure "intricacies" of Terraria's source code. It is made to work for Terraria 1.3+.

### Install notes
Due to rate limiting the console on the panel cannot keep up with the game console and the build will complete before the panel console may show it. Reloading the console will load it to the latest part of the log.

### Minimum RAM warning
You may want to assign a minimum of 768 mb of RAM to a server as it will use around 650 mb to generate the world on the first start.


### Server Ports
tModloader, like Terraria, only requires a single port to run. The default is 7777

| Port    | default |
|---------|---------|
| Game    | 7777    |

#### Plugins may require ports to be added to the server.

### Extra Information

If you want to download mods in the console, the startup command has to be changed.

New startup:  
`./tModLoaderServer -ip 0.0.0.0 -port ${SERVER_PORT} -maxplayers ${MAX_PLAYERS} -savedirectory ~/ -tmlsavedirectory ~/saves -modpath ~/mods`

This will remove the autocreate function, and will thus allow you to download mods and generate world.  
Afterwards, you can change it back with the correct world name to start automatic. Word name is set in the configuration panel.