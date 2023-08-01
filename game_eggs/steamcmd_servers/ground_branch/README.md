# Ground Branch

***NOTE: Game and server are still Early Access. Your mileage may vary as updates are released.***
___

### Authors / Contributors

<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
    <tr>
        <td align="center">
            <a href="https://github.com/lilkingjr1">
                <img src="https://avatars.githubusercontent.com/u/4533989" width="50px;" alt=""/><br /><sub><b>Red-Thirten</b></sub>
            </a>
            <br />
            <a href="https://github.com/parkervcp/eggs/commits?author=lilkingjr1" title="Original Author">⭐</a>
            <a href="https://github.com/parkervcp/eggs/commits?author=lilkingjr1" title="Codes">💻</a>
            <a href="https://github.com/parkervcp/eggs/commits?author=lilkingjr1" title="Maintains">🔨</a>
        </td>
    </tr>
</table>
<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->

___

### Game Description

From BlackFoot Studios' [Website](https://www.groundbranch.com/):
> From one of the developers behind the original Rainbow Six® and Ghost Recon® games, comes a thinking-man's first-person shooter featuring in-depth character and weapon customization. Take your time. Think ahead. Get the job done.

___

### Egg Capabilities

- Configuration of the Server Query port.
- Configurable to automatically check for server updates on start via SteamCMD. Forcing validation is also configurable.
- Mods have not been explored at this time (see [Modding](#modding) for more info)

___

### Server Ports

- Default server ports are listed below, but both ports can be changed freely.
- ***Both ports are required to be open/allocated for normal server behavior!***

| Port | Default (UDP) |
|---------|---------|
| **Game (Primary Port in Pterodactyl)** | 7777 |
| Server Query | 27015 |

___

### Installation/System Requirements

|  | Bare Minimum | Recommended |
|---------|---------|---------|
| Processor | No ARM support. | Recent x86/64 (AMD/Intel) processor. |
| RAM | 550 MiB | 1024-4096 MiB |
| Storage | 5632 MiB | 7168 MiB |
| Network | 3 MiB/s | 7 MiB/s |
| Game Ownership | Not required to start. | Recommended to fully configure server (see [Server Configuration](#server-configuration) below) |

___

### Server Configuration

**NOTE: Server Name and Max Players will be overwritten by your Pterodactyl Startup settings every time the server is started.**

#### In-Game Setup (Recommended):

Configuring all aspects of the server (MOTD, game rules, map list, admins, etc.) is, by far, the easiest (and safest) to do in-game via the built in admin menu. Perform the following steps to do so:

1. Start the server.
2. Navigate to `/home/container/GroundBranch/ServerConfig` within Pterodactyl's file browser and open `AdminSetupPassword.txt`.
3. Copy the code and start your personal Ground Branch game client.
4. Log into your server via the server browser by searching for it by the name you set in the Startup tab of the server.
5. Open the console by pressing `` ` `` and run the following command: `admin setup <your_setup_password>`. This will add you as a SuperAdmin.
6. Running the command `admin` will open the Admin Menu where you can configure everything about the server.

#### Manual Setup (Advanced):

All configuration files for the server can be found here: `/home/container/GroundBranch/ServerConfig`

Please refer to the [Unofficial Ground Branch Wiki](https://unofficialgroundbranchwiki.com/en/dedicated-servers/getting-started) for configuration info.

___

### Modding

At the time of writing this (2023/08/01), no workshop mods for Ground Branch exist. However, if they were to be introduced or you would like to install a mod, mods can be installed to `/home/container/steamapps/workshop/content/16900/`. The server should then stage them to `/home/container/GroundBranch/Mods` and show up as "Mod ID #" in the in-game modding menu.
