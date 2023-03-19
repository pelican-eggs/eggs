# Core Keeper

## Game Info

[Core Keeper](https://store.steampowered.com/app/1621690/Core_Keeper/) is a sandbox survival game.

Explore an endless cavern of creatures, relics and resources in a mining sandbox adventure for 1-8 players. Mine, build, fight, craft and farm to unravel the mystery of the ancient Core.

## Dedicated Server

[Steam DB](https://steamdb.info/app/1963720/info/)

## Parameters

| <img width="120">Parameter    | <img width="300">Default | Description |
|----------------------|--------------------------|---------------------------------------------------|
| World Index    | 0 | Which world index to use. Default: 0. |
| World Name | Core Keeper Server | The name to use for the server. Defaul: Core Keeper Server. |
| World Seed | 0 | The seed to use for a new world. Set to 0 to generate random seed. Default: 0. |
| Game ID |  | Game ID to use for the server. Needs to be at least 28 characters and alphanumeric, excluding Y,y,x,0,O. Empty or not valid means a new ID will be generated at start. Default: EMPTY. |
| Max Players | 100 | Maximum number of players that will be allowed to connect to server. Maximum is 100. Default: 100, |
| World Mode | 0 | Whether to use normal (0) or hard (1) mode for world. Default: 0. |
| Auto Update | 1 | Enable automatic updates on boot: Default: true |

## Game Ports

| Port | Default | Protocol | Description |
|---------|---------|----------|---------------------------------------------|
| Server | 27015 | UDP | |
| Query | 27016 | UDP | Automaticaly bind by the game server (Game port + 1) |

Example:\
Server Port = 4711\
Make sure you open UDP ports 4711-4712 in your firewall and bind the allocations to the Core Keeper Server.

## Requirements of RAM and storage

| Req | Minimum | Recommend |
|---------|---------|---------|
| RAM | 1.0GB | 1.5GB |
| Storage | 1.0GB | 1.5GB |

## Important directories

| Directory | Description |
|---------|---------|
| World Saves | /home/container/.config/unity3d/Pugstorm/Core Keeper/DedicatedServer/worlds |
| Server Settings | /home/container/.config/unity3d/Pugstorm/Core Keeper/DedicatedServer |



