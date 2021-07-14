# Arma 3
### From their [Site](https://arma3.com/)
Experience true combat gameplay in a massive military sandbox. Deploying a wide variety of single- and multiplayer content, over 20 vehicles and 40 weapons, and limitless opportunities for content creation, this is the PC’s premier military game. Authentic, diverse, open - Arma 3 sends you to war.

### Egg Capabilities
- Configurable to run 32 or 64-bit versions of the server.
- Configurable to run Beta/Performance binaries of the server (if desired; advanced users only).
- Able to download server updates.
- Able to download Steam Workshop mods\* and move `.bikey`'s to the `/keys/` directory (\*see Installation Requirements).
- Configurable to run up to 5 Headless Clients in parallel with the main server (may require additional performance overhead).

### Installation Requirements
- A valid, real Steam account, with **Steam Guard turned off**, is required to install the server (default "anonymous" login cannot be used). For security reasons it is [recommended](https://developer.valvesoftware.com/wiki/SteamCMD#With_a_Steam_account) that you create a new Steam account just for your dedicated servers. This account *does not* need to own Arma 3.
- For automatic Steam Workshop mod downloading to work, the Steam account *does* need to own Arma 3. This is, of course, optional functionality, and mods can be manually uploaded to the server if desired. Hosts may feel free to delete the "Steam Workshop Mods to Download/Update" variable if they would not like to offer it's functionallity.

### Minimum RAM Warning
This server requires about 2048 MB of RAM to run properly. If used, every Headless Client uses an additional 2048 MB of RAM as well.

### CPU Usage Information
ARMA 3 is mainly CPU intensive. Contrary to popular belief, the server binary *can* run on multiple cores/threads. However, it's ability to manage asynchronous tasks and hyperthread is *very* limited, meaning additional cores/threads reach diminishing returns very quickly. In addition, it's ability to utilize all of the CPU alloted to it for AI processing seems to be limited as well. Therefore, a Headless Client ***and*** a properly written mission file are highly recommended if large amounts of AI units will be used.

### Additional Settings
Additional server flags can be found [here](https://community.bistudio.com/wiki/Arma_3_Startup_Parameters).  
These can help you fine tune how the server will behave during runtime.

*Note: The `-maxMem=` flag is currently known to cause an unknown segmentaion fault crash on startup. Other hardware related flags may cause similar behavior.*

### Server Ports
Default server ports. **All ports are required.** Ports after the Main port are relative to the main port (For example: The BattlEye port is always 4 ports higher than the main port). It is [recommended](https://community.bistudio.com/wiki/Arma_3:_Dedicated_Server#Port_Forwarding) that each server be 100 ports seperate from each other.

| Port | Default |
|---------|---------|
| **Arma 3 Game & VON (Main)** | 2302 |
| Steam Query (+1) | 2303 |
| Steam Port (+2) | 2304 |
| BattleEye (+4) | 2306 |

#### Mods/Plugins may require ports to be added to the server.
