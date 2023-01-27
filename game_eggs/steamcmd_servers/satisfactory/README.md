# Satisfactory

***Updating your Egg?**: Ensure any existing servers have the latest Startup Command, new Startup Variables are set, **and you reinstall server!***
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
            <a href="https://github.com/parkervcp/eggs/commits?author=lilkingjr1" title="Codes">💻</a>
            <a href="https://github.com/parkervcp/eggs/commits?author=lilkingjr1" title="Maintains">🔨</a>
        </td>
        <td align="center">
            <a href="https://github.com/iamkubi">
                <img src="https://avatars.githubusercontent.com/u/6176191" width="50px;" alt=""/><br /><sub><b>Kubi</b></sub>
            </a>
            <br />
            <a href="https://github.com/parkervcp/eggs/commits?author=iamkubi" title="Codes">💻</a>
            <a href="https://github.com/parkervcp/eggs/commits?author=iamkubi" title="Contributor">💡</a>
        </td>
        <td align="center">
            <a href="https://github.com/matthewpi">
                <img src="https://avatars.githubusercontent.com/u/26559841" width="50px;" alt=""/><br /><sub><b>matthewpi</b></sub>
            </a>
            <br />
            <a href="https://github.com/parkervcp/eggs/commits?author=matthewpi" title="Codes">💻</a>
            <a href="https://github.com/parkervcp/eggs/commits?author=matthewpi" title="Contributor">💡</a>
        </td>
        <td align="center">
            <a href="https://github.com/Software-Noob">
                <img src="https://avatars.githubusercontent.com/u/10975908" width="50px;" alt=""/><br /><sub><b>Software-Noob</b></sub>
            </a>
            <br />
            <a href="https://github.com/parkervcp/eggs/commits?author=Software-Noob" title="Codes">💻</a>
            <a href="https://github.com/parkervcp/eggs/commits?author=Software-Noob" title="Contributor">💡</a>
        </td>
        <td align="center">
            <a href="https://github.com/Zarklord">
                <img src="https://avatars.githubusercontent.com/u/1622280" width="50px;" alt=""/><br /><sub><b>Zarklord</b></sub>
            </a>
            <br />
            <a href="https://github.com/parkervcp/eggs/commits?author=Zarklord" title="Codes">💻</a>
            <a href="https://github.com/parkervcp/eggs/commits?author=Zarklord" title="Contributor">💡</a>
        </td>
        <td align="center">
            <a href="https://github.com/AlienXAXS">
                <img src="https://avatars.githubusercontent.com/u/1773445" width="50px;" alt=""/><br /><sub><b>AlienXAXS</b></sub>
            </a>
            <br />
            <a href="https://github.com/parkervcp/eggs/commits?author=AlienXAXS" title="Contributor">💡</a>
        </td>
    </tr>
</table>
<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->

___

### Game Description

From Coffee Stain's [Website](https://www.satisfactorygame.com/):
> Satisfactory is a first-person open-world factory building game with a dash of exploration and combat. Play alone or with friends, explore an alien planet, create multi-story factories, and enter conveyor belt heaven!

___

### Egg Capabilities

- Configuration of the Server Query, Beacon, and Game ports.
- Configurable to automatically check for server updates on start via SteamCMD. Forcing validation is also configurable.
- *[Experimental]* Max player configuration.
- Autosave amount and interval configuration.
- Disable crash reporting if desired.
- Disable seasonal events if desired.
- ...and other advanced networking and server branch configurable settings.

___

### Server Ports

- Default server ports are listed below, but all three ports can be changed freely (\*some exceptions apply below).
    - All three ports must be unique; they cannot currently be shared on one port (this may change in the future).
    - It is recommended to distance ports of other running Satisfactory servers in Pterodactyl by **increments of 100** (it is currently unknown what the minimum increment is, but an increment of +1 caused cross-server talk in testing). Also, your internal ports **must match** your external ports on your network (ie. you can't have an external port of 7778 forwarded to your 7777 internal port; they must match).
- **Note:** The Primary/Default/Game Port for your server in Pterodactyl will be Satisfactory's `-Port=????` game port, even though clients will **connect with the Query port**.
- ***All three ports are required to be open/allocated for normal server behavior!***

| Port | Default (UDP) |
|---------|---------|
| **Game (Primary Port in Pterodactyl)** | 7777 |
| Beacon | 15000 |
| Server Query (Port clients connect with) | 15777 |

___

### Installation/System Requirements
*Note (9/20/22): Update 6 drastically increased RAM requirement. Servers given less than minimum have a high chance of crashing.*
|  | Bare Minimum | Recommended |
|---------|---------|---------|
| Processor | Recent x86/64 (AMD/Intel) processor. No 32 bit or ARM support. | Favours higher single-core performance over multiple cores. |
| RAM | 10240-12288 MiB | 16384-24576 MiB (especially for 4 players or large save files) |
| Storage | 5 GB | 7-10 GB (or more, depending on save size or frequency) |
| Network | 0.512 Mbit/s | 1-5 Mbit/s ([may require server *and* client config tweaks](https://satisfactory.fandom.com/wiki/Multiplayer#Temporary_lag_solution)) |
| Host OS | Most stable Linux OS branches should work | Using the latest kernel version for your installed OS can prevent some edge-case installation/boot issues. |
| Game Ownership | Not required to start. | Required to fully "initialize" (see [Server Initialization](#server-initialization) below) |

___

### Server Initialization

For a server to be fully "initialized", a client who owns the game must log into the server to "claim" it and create an administrator password. Then, a new session can be created via the "Create Game" tab in-game, or an existing save file can be uploaded (see [Save Files](#save-files) below).

Misc. settings listed below can be configured by an admin client via the game's "Server Settings" tab, and are currently **not** set via the Egg:

- Server Password
- Admin Password
- Auto-Save on Player Disconnect
- Pause When No Players Online
- ...and possibly more as the client's UI is developed further for more configuration options.

___

### Save Files

An existing save file (including single-player saves) can currently be uploaded to the server via two different methods:

- "Manage Saves" tab via an admin client in-game (Recommended)
- Manually via the File Manager or SFTP

Save files are located in this directory:

```md
/home/container/.config/Epic/FactoryGame/Saved/SaveGames/server
```

*Note: A manually uploaded save will only load if it is (a.) loaded manually via the "Manage Saves" tab in-game, (b.) it is the only save file present, or (c.) its existing session name (not its file name) matches the existing save's session name *and* has the most recent time stamp.*

***Warning:*** Stopping the server **does not** currently save your game! Ensure it is saved before stopping the server.

If you have forgotten your administrator password or would generally like to reset your server as if it were new, you can delete the following file:

```md
/home/container/.config/Epic/FactoryGame/Saved/SaveGames/ServerSettings.<your_server_query_port>
```

___

### Console Commands

The console tab in the client server manager is the only way to execute commands. Entering commands via Pterodactyl do nothing.

[List of known commands can be found via the Wiki.](https://satisfactory.fandom.com/wiki/Dedicated_servers#Console_commands)

___

### Known Errors/Warnings

The following errors or warnings you see in the console can safely be ignored:

```log
steamclient.so: cannot open shared object file: No such file or directory
[S_API] SteamAPI_Init(): Loaded '/home/container/.steam/sdk64/steamclient.so' OK.  (First tried local 'steamclient.so')
LogSteamShared: Warning: Steam Dedicated Server API failed to initialize.
```

↑ The local file of 'steamclient.so' was attempted to be loaded, but could not because it is not present, causing the warning message. However, the backup `/home/container/.steam/sdk64/steamclient.so` is loaded successfully (this is the correct behavior according to the [Wiki](https://satisfactory.fandom.com/wiki/Dedicated_servers#SteamAPI_Init.28.29:_Sys_LoadModule_filed_to_load:_.2Fpath.2Fto.2F.steam.2Fsdk64.2Fsteamclient.so)).

```log
Warning: failed to init SDL thread priority manager: SDL not found
```

↑ This is a common error with Steam related software on Linux, but can safely be ignored.

```log
...Error: Couldn't find file for package...
```

```log
...Error: Navmesh bounds are too large!...
```

```log
...Warning: NiagaraSystem...
```

```log
LogStreaming: Warning: Failed to read file '../../../FactoryGame/Saved/SaveGames/GameAnalytics.sav' error.
```

↑ These seem to be common error messages with the current experimental version of the game.
