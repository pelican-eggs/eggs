# Rust Autowipe

The only aim in Rust is to survive. To do this you will need to overcome struggles such as hunger, thirst and cold. Build a fire. Build a shelter. Kill animals for meat. Protect yourself from other players, and kill them for meat. Create alliances with other players and form a town. Do whatever it takes to survive.

Adds variables to wipe files based on a list you set. Reinstall to perform the wipe.

The variable `REGEN_SERVER` was added, default 0, set to 1 to generate a random seed and remove old files on reinstall.

Files listed in the `REMOVE_FILES` variable, space separated, will be removed.

## Minimum RAM warning

The server requires at least 4096MB to run properly.
This is mostly needed for the startup only, once it is running (depending on your world size) it should consume less.

## Server Ports

Ports required to run the server.

| Port    | default |
|---------|---------|
| Game and Query | 28015 UDP |
| RCON | 28016 TCP |

### Information about server updates can be found [here](https://steamdb.info/app/258550/depots/?branch=staging)
