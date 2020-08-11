# Minecraft

It’s a game about placing blocks and going on adventures

It’s set in infinitely-generated worlds of wide open terrain - icy mountains, swampy bayous, vast pastures and much more - filled with secrets, wonders and peril!

## Server Ports
The minecraft server requires a single port for access (default 25565) but plugins may require extra ports to enabled for the server.

## Cuberite
A lightweight, fast and extensible game server for Minecraft
[Cuberite](https://cuberite.org/)

## Feather
[Feather](https://github.com/feather-rs/feather)  
An experimental Minecraft server implementation in Rust 

## Forge 
[Forge MC](https://files.minecraftforge.net/)  
This is a direct fork of the default forge service  
- Has a version detection fix for "latest"  

[Curse Generic](https://www.curseforge.com/)  
A generic service to pull forge mod packs from the curseforge site.  

## FTB Packs
[FTB](https://www.feed-the-beast.com/modpacks)  
A generic service to pull forge mod packs from the FTB site.  
Supply values to 2 variables to use  
- MODPACK_URL:  from the url to the pack https://www.feed-the-beast.com/projects/{MODPACK_URL}  
- MODPACK_VERSION: version of the modpack to install

[FTB Modpacks through modpacks.ch](https://api.modpacks.ch)
A generic service to pull FTB modpacks from api.modpacks.ch.
There are 2 ways to install a server through this service.
The first method only requires you to know the modpacks name and version.
The second method requires you to know the id for both the modpack and version in the api.

**Method 1 (Recommended)**
- FTB_SEARCH_TERM: the modpack name to query for, must be at least 4 characters long.
  EX: for FTB: Interactions you would do "interactions".
- FTB_VERSION_STRING: the string version that you want to install.
  EX: for FTB: Interactions 2.0.2, you would put "2.0.2".
  
**Method 2**
- FTB_MODPACK_ID: the id that directs to the modpack in the api.
  EX: for FTB: Interactions the id would be "5". https://api.modpacks.ch/public/modpack/5
- FTB_MODPACK_VERSION_ID: the version id in the api.
  EX: for FTB: Interactions 2.0.2 the id is "86". https://api.modpacks.ch/public/modpack/5/86

**NOTE**
**Not all FTB packs come with a server.properties file, due to this the server.properties file
may not get updated with the correct ip address and port at first launch.
Please restart the server after first launch to fix this.**

[FTB Revelation](https://www.feed-the-beast.com/projects/ftb-revelation)  
Revelation is a general all-purpose modpack with optimal FPS, server performance and stability.  

## Magma
[Magma](https://magmafoundation.org/)
Magma is most powerful Forge server providing you with Forge mods and Bukkit Plugins using Spigot and Paper for Performance Optimization and Stability.

## Paper
Currently the default on pterodactyl for many reasons. First being that you don't need to build the jar.

[PaperMC GitHub](https://github.com/PaperMC/Paper)  
High performance Spigot fork that aims to fix gameplay and mechanics inconsistencies  

## Spigot
A collection of spigot and forked spigot eggs.

[Spigot](https://www.spigotmc.org/)  
This is a direct fork of the default spigot service with the added benefit of being able to build the spigot jar.  
- (It's noted that building the jar is intensive and time consuming)

## Sponge

[SpongeVanilla](https://www.spongepowered.org/)
A community-driven open source Minecraft: Java Edition modding platform.

## Technic Packs
[Hexxit](https://www.technicpack.net/modpack/hexxit)  
Gear up and set forth on a campaign worthy of legend, for Hexxit has been unearthed!  

[Blightfall](https://www.technicpack.net/modpack/blightfall)  
Blightfall is a combination modpack and adventure map about surviving on an alien planet.  

[Tekkit Legends](https://www.technicpack.net/modpack/tekkit-legends)  
The ancient power of Tekkits past return in this legendary pack!

[Tekkit Classic](https://www.technicpack.net/modpack/tekkit.552560)
The official Tekkit Classic modpack. Build factories, automate crafting!  

## Tuinity
Fork of Paper aimed at improving server performance at high playercounts.
[Tuinity GitHub](https://github.com/Spottedleaf/Tuinity) 
