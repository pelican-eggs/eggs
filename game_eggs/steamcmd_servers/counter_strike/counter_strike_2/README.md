# Counter-Strike 2

Steam Description :
For over two decades, Counter-Strike has offered an elite competitive experience, one shaped by millions of players from across the globe. And now the next chapter in the CS story is about to begin. This is Counter-Strike 2.

## Install notes

The process is a little different from CS:GO’s dedicated server. Instead of downloading a seperate branch made specifically for hosting servers, at the time of CS2’s release: We need to use the same branch as the main release.<br>
There isn’t a dedicated server branch (740) like there was for CS:GO.<br>
<br>
**!!! Important !!!**<br>
Due to the fact there is no dedicated server application to CS2, you will have to login with your steam account.<br>
I recommend not using your main account. Instead please use or create an alternative account with disabled or Steamguard (Mail).<br>
Steamguard enabled with the Authenticator app is not supported yet!<br>
<br>
Once the initial installation is complete, you will need to enter the Steamguard code that will be emailed to you and then reinstall the server.<br>
Within the second installation process the server downloads the game files.<br>
Now you will need to trigger reinstall a third time to copy the missing steamclient.so files and download the template server.cfg file.<br>
<br>
Currently you do not need to generate a [Gameserver Login Token](https://steamcommunity.com/dev/managegameservers).<br>
The server auto generates the GSLT on startup, and stores it locally, and renews when able to.<br>
This might change if they update the 740 depot and we provide us standalone server files.<br>
If so, i will update this egg as soon as possible.<br>
<br>
Further install instructions can be found here: <https://developer.valvesoftware.com/wiki/Counter-Strike_2/Dedicated_Servers>

## Installation/System Requirements

The following system requirements are not confirmed yet.<br>
While installing the server it uses up to 5 GB of RAM.<br>

|  | Minimum | Recommended |
|---------|---------|---------|
| Processor | 1.4 GHz processor (64-bit) | 2.8 GHz processor (64-bit) |
| RAM | 2 GB | 5 GB |
| Storage | 35 GB | 50 GB |
| Network | 1 Mbit/s | 5 Mbit/s |
| Game Ownership | - | See **Install Notes** |

## Server Ports

The default game server port for CS2 is 27015 but any other port can be used.<br>
For the use of SourceTV you need to allocate a second port, the default one for this is 27020 but any other port can be used.<br>
By default SourceTV is disabled in srctv.cfg. Please keep in mind that the use of SourceTV might cause in higher CPU and RAM usage!<br>

## Notes

This egg is WIP (work in progress). I will add more functionalities, e.g. Workshop collections over time.<br>
The default server.cfg is empty, so i added a very basic autoexec.cfg to this repository, which is is executed at startup.<br>
As of October 5th 2023 RCON is not working correctly or is bugged when joining the server.<br>
You need to use the server console or external rcon tool to be able to execute rcon commands. This might be fixed in a future update.<br>
Source: <https://www.reddit.com/r/GlobalOffensive/comments/167spzi/cs2_rcon/>