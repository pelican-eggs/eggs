# Mordhau
Steam Description  
MORDHAU is a medieval first & third person multiplayer slasher. Enter a hectic battlefield of up to 64 players as a mercenary in a fictional, but realistic world, where you will get to experience the brutal and satisfying melee combat that will have you always coming back for more.

### Versions

#### Vanilla
A standard linux mordhau server

#### Wine
The windows version of the server running in Wine.  
This supports some mods that do not work with the linux version of the server.  
Uses more resources for the server than the linux version.

### Server Ports
Mordhau requires 3 ports

game port (default 7777)
query port (default 27015)
Beacon (default 15000)

| Port    | default       |
|---------|---------------|
| Game    | 7777          |
| Query   | 27015         |
| Beacon  | 15000         |

### Map Rotation / Change Config
Lots of good information in this [thread](https://mordhau.com/forum/topic/10348/dedicated-server-hosting-guide-linux/?page=1)
You'll need to run the server once before the Mordhau/Saved/Config/LinuxServer  folder is available

### Default Map Variable
By default the game always starts the same game map and mode.  Change this variable to start the server wth your choice of map and mode. For example , Grad/HRD_Grad OR TaigaMap/FL_Taiga

Map Types
HRD = Hoard
SKM = Skirmish
FL = Frontline
FFA = Deathmatch
BR = BattleRoyal
TDM = Team Death Match

Valid types per map

Grad/
HRD_Grad
BR_Grad
FFA_Grad
FL_Grad
SKM_Grad

Contraband/
FFA_Contraband
SKM_Contraband
TDM_Contraband

DuelCamp/
FFA_Camp
FL_Camp
HRD_Camp
SKM_Camp
TDM_Camp_64
TDM_Camp

MaxMap/
FFA_MountainPeak
FL_MountainPeak
HRD_MountainPeak
SKM_MountainPeak
TDM_MountainPeak
