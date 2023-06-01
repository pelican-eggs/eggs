# CurseForge Generic

## This is a generic egg for CurseForge modpacks

You will need to give it a modpack project ID. The project ID for [All the Mods 8 - ATM8](https://www.curseforge.com/minecraft/modpacks/all-the-mods-8) is `520914` for example.
This can be found on the modpack page in the `About Project` section in the right sidebar.

You can also optionally specify a file ID. If you do not specify a file ID, the latest version will be used. 
The file ID for the server pack for [All the Mods 8 - ATM8](https://www.curseforge.com/minecraft/modpacks/all-the-mods-8) version `1.0.17` is `4504876` for example. 
This can be found on the modpack page by clicking the wanted file and copying the id at the end of the URL (the number after `/files/`).

The script will automatically setup of Forge, Fabric, or Quilt depending on the modpack.

You *must* specify a CurseForge API key. 
You can find out how to get an API key [here](https://support.curseforge.com/en/support/solutions/articles/9000208346-about-the-curseforge-api-and-how-to-apply-for-a-key)

## Server Ports

The minecraft server requires a single port for access (default 25565) but plugins may require extra ports to enabled for the server.

| Port  | default |
|-------|---------|
| Game  | 25565   |