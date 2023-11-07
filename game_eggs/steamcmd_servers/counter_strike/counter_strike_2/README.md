# Counter-Strike 2

Steam Description :
For over two decades, Counter-Strike has offered an elite competitive experience, one shaped by millions of players from across the globe. And now the next chapter in the CS story is about to begin. This is Counter-Strike 2.

## Install notes

As of 07.11.2023 there isn’t a dedicated server branch like there was for CS:GO (740).<br>
The server files are included inside the game files (730).<br>

## Installation/System Requirements

The following system requirements are not confirmed yet.<br>
While installing the server it uses up to 5 GB of RAM.<br>

|  | Minimum | Recommended |
|---------|---------|---------|
| Processor | 1.4 GHz processor (64-bit) | 2.8 GHz processor (64-bit) |
| RAM | 2 GB | 5 GB |
| Storage | 35 GB | 50 GB |
| Network | 1 Mbit/s | 5 Mbit/s |

## Server Ports

The default game server port for CS2 is 27015 but any other port can be used.<br>
For the use of SourceTV you need to allocate a second port, the default one for this is 27020 but any other port can be used.<br>
By default SourceTV is disabled in srctv.cfg. Please keep in mind that the use of SourceTV might cause in higher CPU and RAM usage!<br>

## Notes

The default server.cfg is empty, so i added a very basic autoexec.cfg to this repository, which is is executed at startup.<br>
As of October 5th 2023 RCON is not working correctly or is bugged when joining the server.<br>
You need to use the server console or external rcon tool to be able to execute rcon commands. This might be fixed in a future update.<br>
Source: <https://www.reddit.com/r/GlobalOffensive/comments/167spzi/cs2_rcon/><br>
Further install instructions can be found here: <https://developer.valvesoftware.com/wiki/Counter-Strike_2/Dedicated_Servers>