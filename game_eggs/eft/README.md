# Escape from Tarkov

# Singleplayer Tarkov Server

## After server installation

Run the server once to generate the necessary config files for the coop mod, then edit `coopConfig.json` in `/home/container/user/mods/SITCoop/config` with your external IPv4.

## Client for connecting to the server

[Stay in Tarkov](https://github.com/stayintarkov/StayInTarkov.Client)

An Escape From Tarkov BepInEx module designed to be used with the SIT.Aki-Server-Mod with the ultimate goal of "Offline" Coop

Installation instructions are provided in [the project's README.md file](https://github.com/stayintarkov/StayInTarkov.Client#client-install).

**2024-02-05 Note, please read**:
> NOTE: As of 05/02/2024 the downgraders used by the manager and in the link provided for the manual install will not downgrade to the correct version and/or fail. Please check the SIT Discord for the latest EFT downgrader

What this means: the user needs to manually downgrade EFT's version with a patch matching the live game's version from ([the SIT discord linked in the SIT repo](https://github.com/stayintarkov/StayInTarkov.Client#support)) in the #downgrade-eft channel.

To install the SIT client:
- Install the live Escape from Tarkov game from the official launcher.
- Install the [SIT Manager](https://github.com/stayintarkov/SIT.Manager) from the repo.
- Copy the live EFT installation to a different location. This copy will be used in the following steps as the SIT game client.
- Obtain the downgrade patcher from the discord, and extract the contents (`Aki_Patches` directory and `patcher.exe`) to the root folder of the game copy.
- Run `patcher.exe` to downgrade EFT.
- Afterwards, follow the instructions after the second bullet point under [`SIT Manager Method`](https://github.com/stayintarkov/StayInTarkov.Client?tab=readme-ov-file#sit-manager-method), where the `SIT\game` directory will be the game copy previously made.


## Server Ports

Ports required to run the server in a table format.

| Port              | default |
|-------------------|---------|
| Game              | 6969    |
| SIT Mod Websocket | 6970    |

## Server components

Installation script based on [SIT.Docker](https://github.com/stayintarkov/SIT.Docker).

[SPT-AKI Server](https://dev.sp-tarkov.com/SPT-AKI/Server) 

SPT is a modding framework for Escape From Tarkov. 

[SIT.Aki-Server-Mod](https://github.com/stayintarkov/SIT.Aki-Server-Mod)

A SPT-Aki mod to be used with SPT-Aki Server to allow the Coop Module to communicate with the SPT-Aki Server.

