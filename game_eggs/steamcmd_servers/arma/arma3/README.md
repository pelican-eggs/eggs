# Arma 3

***Updating your Egg? Please see [How to Update Egg](#how-to-update-egg) to avoid any issues!***
___

## Authors / Contributors

<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
    <tr>
        <td align="center">
            <a href="https://github.com/lilkingjr1">
                <img src="https://avatars.githubusercontent.com/u/4533989" width="50px;" alt=""/><br /><sub><b>Red-Thirten</b></sub>
            </a>
            <br />
            <a href="https://github.com/parkervcp/eggs/commits?author=lilkingjr1" title="Codes">💻</a>
            <a href="https://github.com/parkervcp/eggs/commits?author=lilkingjr1" title="Maintains">🔨</a>
        </td>
        <td align="center">
            <a href="https://github.com/aussieserverhosts">
                <img src="https://avatars.githubusercontent.com/u/65438932" width="50px;" alt=""/><br /><sub><b>Aussie Server Hosts</b></sub>
            </a>
            <br />
            <a href="https://github.com/parkervcp/eggs/commits?author=aussieserverhosts" title="Codes">💻</a>
            <a href="https://github.com/parkervcp/eggs/commits?author=aussieserverhosts" title="Contributor">💡</a>
        </td>
        <td align="center">
            <a href="https://github.com/IAmSilK">
                <img src="https://avatars.githubusercontent.com/u/16708907" width="50px;" alt=""/><br /><sub><b>IAmSilK</b></sub>
            </a>
            <br />
            <a href="https://github.com/parkervcp/eggs/commits?author=IAmSilK" title="Codes">💻</a>
            <a href="https://github.com/parkervcp/eggs/commits?author=IAmSilK" title="Contributor">💡</a>
        </td>
        <td align="center">
            <a href="https://github.com/Yomanz">
                <img src="https://avatars.githubusercontent.com/u/5119107" width="50px;" alt=""/><br /><sub><b>Daave</b></sub>
            </a>
            <br />
            <a href="https://github.com/parkervcp/eggs/commits?author=Yomanz" title="Codes">💻</a>
            <a href="https://github.com/parkervcp/eggs/commits?author=Yomanz" title="Original Creator">⭐</a>
            <a href="https://github.com/parkervcp/eggs/commits?author=Yomanz" title="Retired from Development">💤</a>
        </td>
    </tr>
</table>
<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->

___

### Game Description

From Bohemia Interactive's [Website](https://arma3.com/):
> Experience true combat gameplay in a massive military sandbox. Deploying a wide variety of single and multiplayer content, over 20 vehicles and 40 weapons, and limitless opportunities for content creation, this is the PC’s premier military game. Authentic, diverse, open - Arma 3 sends you to war.
___

### Egg Capabilities

- Configurable to run 32 or 64-bit versions of the server
- Max Players is configurable and able to be host enforced (\*see [Recommended Egg Modifications](#recommended-egg-modifications))
- Able to download server updates on startup
- Able to download, update, and load Steam Workshop mods on startup (\*see [Installation Requirements](#installation-requirements))
  - Accepts uploaded HTML modlist files exported from the Arma 3 Launcher to define mods to load on the server.
  - Also accepts manually listed mods, CDLCs, and server-side only mods.
  - Checks for mod updates against their Steam Workshop page's last update for quick and efficient update checks.
  - Automatically moves mod `.bikey`'s to the `/keys/` directory.
- Configurable to download Creator DLCs
- Configurable to run Beta/Performance binaries of the server (if desired; advanced users only)
- Additional [Arma 3 startup parameters](https://community.bistudio.com/wiki/Arma_3_Startup_Parameters) can be added to fine-tune performance
- Configurable to run up to 5 Headless Clients in parallel with the main server (may require additional performance overhead)
- [WHMCS](https://www.whmcs.com/) compatible (\*see [Recommended Egg Modifications](#recommended-egg-modifications))

___

### Installation Requirements

- A valid, **real** Steam account, with **Steam Guard turned off**, is required to install the server (default "anonymous" login cannot be used). For security reasons it is [recommended by Valve](https://developer.valvesoftware.com/wiki/SteamCMD#With_a_Steam_account) that you create a new Steam account just for your dedicated servers. This account *does not* need to own Arma 3.
- For automatic Steam Workshop mod downloading to work, the Steam account *does* need to own Arma 3. However, this is optional functionality, and mods can be manually uploaded to the server if desired. Hosts may feel free to change the "Disable Mod Downloads/Updates" variable to `1` if they would not like to offer it's functionality to clients.

___

### Server Ports

Default server ports are listed below, but the Main port can be any port. There are three more ports after the Main port are relative to the Main port (For example: The BattlEye port is always 4 ports higher than the main port). **All four ports are required for normal server behavior.** It is [recommended](https://community.bistudio.com/wiki/Arma_3:_Dedicated_Server#Port_Forwarding) that each server be 100 ports separate from each other.

| Port | Default (UDP) |
|---------|---------|
| **Arma 3 Game & VON (Main)** | 2302 |
| Steam Query (+1) | 2303 |
| Steam Port (+2) | 2304 |
| BattleEye (+4) | 2306 |

___

### Installation/System Requirements

|  | Bare Minimum | Recommended |
|---------|---------|---------|
| Processor | Recent x86/64 (AMD/Intel) processor. No ARM support. | ARMA 3 is mainly CPU intensive. Contrary to popular belief, the server binary *can* run on multiple cores/threads. However, it's ability to manage asynchronous tasks and hyperthread is *very* limited, meaning additional cores/threads reach diminishing returns very quickly. In addition, it's ability to utilize all of the CPU allotted to it for AI processing seems to be limited as well. Therefore, a Headless Client ***and*** a properly written mission file are highly recommended if large amounts of AI units will be used. |
| RAM | 2048 MiB | 3072 MiB (If used, every Headless Client uses an additional 2048 MB of RAM as well) |
| Storage | 10 GB | 50+ GB (depends on how many mods are installed) |
| Network | 0.512 Mbit/s/player | 1-5 Mbit/s/player |
| Host OS | Most stable Linux OS branches should work | Using the latest kernel version for your installed OS can prevent some edge-case installation/boot issues. |

___

### Recommended Egg Modifications

The following are highly recommended variable modifications you can make to the egg after importing it to your panel. While viewing this egg, simply go to the "Variables" tab of the egg editor to make these changes.

#### Default Steam Username & Password

- To make deploying servers easy (**or if you are using WHMCS**), it is recommended to edit the default values of "Steam Username" and "Steam Password" to your Steam account dedicated for hosting. This will make all newly installed servers use these credentials. **DO NOT** make these fields visible to the end user so that they can use their own Steam accounts; the panel will save their Steam credentials in **plain text**, which is a BIG NO NO for security and privacy.

#### Restrict Max Players

- If you would like to restrict the maximum number of players that can join your client's server, you can change the permissions of the "Max Players" variable so that clients can only view this value (and not edit it). It's default value can also be changed, or the value can be changed on a server-by-server basis as desired.
___

### How to Update Egg

If you already have an Arma 3 egg installed on your panel, there are a couple things to consider before updating to this egg:
- The Startup Command has changed, but Pterodactyl currently does not update this across all your existing servers. Servers will still boot with their old Startup Command, but the new HTML Modlist feature will not work, and depreciated variables for config files will be used. Servers will have to be manually updated to the new Startup Command via the Startup tab.
- Startup Variables have been completely rehauled. While most important existing variables have retained their Environment Variable names, a lot of their titles and order have been adjusted. Simply updating your existing egg with this egg may lead to Startup Variables being terribly out of order and cluttered. Therefore, the following steps are recommended to avoid this:
  1. Change the name of your existing Arma 3 egg to "Arma 3 (Old)".
  2. Install this updated egg as a new egg in your nest.
  3. Make any egg modifications you would like. (\*see [Recommended Egg Modifications](#recommended-egg-modifications))
  4. Change all existing Arma 3 servers to the new egg via the Startup tab.
  5. Delete the old egg.
