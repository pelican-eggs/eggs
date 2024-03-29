# Minecraft

It’s a game about placing blocks and going on adventures

It’s set in infinitely-generated worlds of wide open terrain - icy mountains, swampy bayous, vast pastures and much more - filled with secrets, wonders and peril!

## Server Ports

The minecraft server requires a single port for access (default 25565) but plugins or mods may require extra ports to enabled for the server.

## [Cuberite](cuberite)

[Cuberite Website](https://cuberite.org)
A lightweight, fast and extensible game server for Minecraft

## [Fabric](fabric)

[Fabric Website](https://fabricmc.net)
Fabric is a lightweight, experimental modding toolchain for Minecraft.

## [Feather](feather)

[Feather GitHub](https://github.com/feather-rs/feather)
An experimental Minecraft server implementation in Rust

## Forge Based

### [Forge](forge/forge)

[Forge MC Website](https://files.minecraftforge.net)
This is a direct fork of the default forge service

- Has a version detection fix for "latest"

### [CurseForge Generic](curseforge)

[CurseForge Generic Website](https://www.curseforge.com)
A generic service to pull forge mod packs from the curseforge site.

### [NeoForge](neoforge)

[NeoForge Website](https://neoforged.net)
A fork of Minecraft Forge that supports Minecraft versions 1.20.1 and newer.

## Glowstone 
[Glowstone](https://glowstone.net/)
Glowstone is an open-source replacement for CraftBukkit, Spigot, and Paper.

### [Magma](magma)

[Magma Website](https://magmafoundation.org)
Magma is most powerful Forge server providing you with Forge mods and Bukkit Plugins using Spigot and Paper for Performance Optimization and Stability.

### [Modrinth](modrinth)

A generic service to pull modpacks from Modrinth.

[Modrinth Website](https://modrinth.com)
Discover, play, and share Minecraft content through our open-source platform built for the community.

### [Krypton](krypton)

[Krypton GitHub](https://github.com/KryptonMC/Krypton)
A fast, lightweight Minecraft server written in Kotlin.

### [Mohist](mohist)

[Mohist Github](https://github.com/Mohist-Community/Mohist)
Mohist is a minecraft forge server software that implements the Paper/Spigot/Bukkit API.

## [FTB Packs](ftb)

[FTB Modpacks API](https://api.modpacks.ch)
A generic service to pull FTB modpacks from api.modpacks.ch.
There are 2 ways to install a server through this service.
The first method only requires you to know the modpacks name and version.
The second method requires you to know the id for both the modpack and version in the api.

### Method 1 (Recommended)

- FTB_SEARCH_TERM: the modpack name to query for, must be at least 4 characters long.
  EX: for FTB: Interactions you would do "interactions".
- FTB_VERSION_STRING: the string version that you want to install.
  EX: for FTB: Interactions 2.0.2, you would put "2.0.2".

### Method 2

- FTB_MODPACK_ID: the id that directs to the modpack in the api.
  EX: for FTB: Interactions the id would be "5". `https://api.modpacks.ch/public/modpack/5`
- FTB_MODPACK_VERSION_ID: the version id in the api.
  EX: for FTB: Interactions 2.0.2 the id is "86". `https://api.modpacks.ch/public/modpack/5/86`

**NOTE**
**Not all FTB packs come with a server.properties file, due to this the server.properties file
may not get updated with the correct ip address and port at first launch.
Please restart the server after first launch to fix this.**

## [NanoLimbo](nanolimbo)

[NanoLimbo GitHub](https://github.com/Nan1t/NanoLimbo)
A lightweight minecraft limbo server, written on Java with Netty. The main goal of the project is maximum simplicity with a minimum number of sent and processed packets.

## [Limbo](limbo)

[Limbo GitHub](https://github.com/LOOHP/Limbo)
Standalone server program Limbo.

## [Quilt](quilt)
[Quilt Website](https://quiltmc.org/)
The Quilt project is an open-source, community-driven modding toolchain designed primarily for Minecraft. By focusing on speed, ease of use and modularity, Quilt aims to provide a sleek and modern modding toolchain with an open ecosystem.

## Spigot Based

A collection of spigot and forked spigot eggs.

### [Paper](paper)

[PaperMC GitHub](https://github.com/PaperMC/Paper)
High performance Spigot fork that aims to fix gameplay and mechanics inconsistencies
Currently the default on pterodactyl for many reasons. First being that you don't need to build the jar.

### [Folia](folia)

[Folia GitHub](https://github.com/PaperMC/Folia)
High performance Fork of Paper which adds regionised multithreading to the dedicated server. designed for many players.
Spigot Plugins are not compatible with this fork. unless they are optimised for Folia.

### [Purpur](purpur)

[Purpur Website](https://purpurmc.org/)
Purpur is a drop-in replacement for Paper servers designed for configurability, and new fun and exciting gameplay features.

### [Spigot](spigot)

[Spigot Website](https://www.spigotmc.org)
This is a direct fork of the default spigot service with the added benefit of being able to build the spigot jar.

- (It's noted that building the jar is intensive and time consuming)

## Sponge Powered

### [SpongeForge](spongeforge)

[SpongeForge Website](https://www.spongepowered.org)
SpongeForge is the implementation of the Sponge API on the Minecraft Forge platform.

### [SpongeVanilla](spongevanilla)

[SpongeVanilla Website](https://www.spongepowered.org)
A community-driven open source Minecraft: Java Edition modding platform.

## [Technic Packs](technic)

### [Hexxit](technic/hexxit)

[Hexxit Modpack Page](https://www.technicpack.net/modpack/hexxit)
Gear up and set forth on a campaign worthy of legend, for Hexxit has been unearthed!

### [Blightfall](technic/blightfall)

[Blightfall Modpack Page](https://www.technicpack.net/modpack/blightfall)
Blightfall is a combination modpack and adventure map about surviving on an alien planet.

### [Tekkit Legends](technic/technic-legends)

[Tekkit Legends Modpack Page](https://www.technicpack.net/modpack/tekkit-legends)
The ancient power of Tekkits past return in this legendary pack!

### [Tekkit Classic](technic/tekkit-classic)

[Tekkit Classic Modpack Page](https://www.technicpack.net/modpack/tekkit.552560)
The official Tekkit Classic modpack. Build factories, automate crafting!

## [VanillaCord](vanillacord)

## VanillaCord
[VanillaCord](https://github.com/ME1312/VanillaCord)
VanillaCord adds support for BungeeCord's ip-forwarding option on vanilla Minecraft servers.
