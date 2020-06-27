### Rust Autowipe
The only aim in Rust is to survive. To do this you will need to overcome struggles such as hunger, thirst and cold. Build a fire. Build a shelter. Kill animals for meat. Protect yourself from other players, and kill them for meat. Create alliances with other players and form a town. Do whatever it takes to survive.

Adds variables to wipe files based on a list you set.

The variable `REGEN_SERVER` was added, default 0 set to 1 to generate a random seed and remove old files

Files listed in the `REMOVE_FILES` variabe, space separated, will be removed.

### Minimum RAM warning
The server requires at least 4096MB to run properly.
This is mostly needed for the startup only, once it is running (depending on your world size) it should consume less.

### Modding warning
Due to Oxide/uMod not supporting the staging branch, you will not be able to Mod this server.

Wulf (Community Admin on Oxidemod/uMod):

"We only release builds for the release/public branch of Rust, so if you'd like to use it on any other branch, you'd need to manually patch it yourself using our patcher tool founder under the Snapshots repo. To switch a different Rust branch, just use the -beta tag with SteamCMD and the branch name."

### Server Ports
Ports required to run the server.

| Port    | default |
|---------|---------|
| Game and Quary | 28015 UDP |
| RCON | 28016 TCP |

### Information about server updates can be found [here](https://steamdb.info/app/258550/depots/?branch=staging)
