# VEIN
<!--Please remove these comments and irelevent parts for the server egg your adding before summiting a PR request-->

## From their [Steam](https://store.steampowered.com/app/1857950/VEIN/)

## [Documentation](https://ramjet.notion.site/Server-Hosting-85f92f43f32548c1b5b33797ddf456ad)

## Installation/System Requirements
<!--Make changes to reflect the server minimum/recommended hardware specs-->
## Installation/System Requirements
|  | Bare Minimum | Recommended |
|---------|---------|---------|
| Processor | Almost any proccessor will work (AMD64 only) | -|
| RAM | 3 GiB | 4 GiB |
| Storage | 6 GiB | 8 GiB |
| Network | Any reasonable speed |- |
| Game Ownership | Not needed | * |   

## Server Ports

Ports required to run the server in a table format.

| Port    | default |
|---------|---------|
| Game    | 7777    |
| Query   | 27015   |

## Config

Some config values can be changed under the startup tab.
Everything else must manual be changed in `Vein/Saved/Config/LinuxServer/Game.ini`

See [here](https://ramjet.notion.site/Server-Hosting-85f92f43f32548c1b5b33797ddf456ad) what every option means.

## Warning

Do not touch the `Vein/Saved/Config/LinuxServer/Engine.ini` file, it will brake the console!


