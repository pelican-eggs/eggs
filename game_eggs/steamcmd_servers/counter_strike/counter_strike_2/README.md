# Counter-Strike 2

Steam Description :
For over two decades, Counter-Strike has offered an elite competitive experience, one shaped by millions of players from across the globe. And now the next chapter in the CS story is about to begin. This is Counter-Strike 2.

## Install notes

For CS2 Valve has decided to merge the game and server files. There will not be standalone dedicated server files.<br>

## Installation/System Requirements

|  | Minimum | Recommended |
|---------|---------|---------|
| Processor | minim x86-64-v2 (with popcnt) | --- |
| RAM | 2 GB | --- |
| Storage | 33 GB | --- |

## Server Ports

Ports required to run the server in a table format.

| Port    | default |
|---------|---------|
| Game    | 27015   |
| Source TV | 27020 |
| Client  | 27005   |
| Steam   | 26900   |

## RCON

RCON is only accessible from external apps, NOT from the game client itself. It's broken in CS2.<br>
If possible always use the Pterodactyl console to use your commands like ``map de_nuke`` or ``mp_restartgame 3``.<br>

## Notes

As the default server.cfg is empty this egg ships a very basic configuration file, which is downloaded within the install script.<br>
The config comes with the most common cvars, suitable for most users. Experienced users can add their own cvars to the file.<br>
This egg also provides a config for Source TV (sourcetv.cfg). By default the Source TV will be disabled.<br>
Please keep in mind that using Source TV might lead to higher CPU and RAM usage!<br>
<br>
Further install instructions can be found at the official [Documentation](https://developer.valvesoftware.com/wiki/Counter-Strike_2/Dedicated_Servers).