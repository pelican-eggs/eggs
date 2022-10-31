# Veloren

## From their [Site](https://veloren.net/)

Veloren is a multiplayer voxel RPG written in Rust. It is inspired by games such as Cube World, Legend of Zelda: Breath of the Wild, Dwarf Fortress and Minecraft.

Veloren is fully open-source, licensed under GPL 3. It uses original graphics, musics and other assets created by its community. Being contributor-driven, its development community and user community is one and the same: developers, players, artists and musicians come together to develop the game.

## Server Ports

**Due to there new config file you have to set the game port manual in the config file!!**

`/home/container/userdata/server/server_config/settings.ron`
- Line 4:             `address: "[::]:14004",` -> `            address: "[::]:<port>",`
- Line 7:             `address: "0.0.0.0:14004",`->           `address: "0.0.0.0:<port>",`

Ports required to run the server in a table format.

| Port    | default |
|---------|---------|
| Game    | 14004   |
| Metrics | 14005   |

### Mods/Plugins may require ports to be added to the server
