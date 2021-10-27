# Satisfactory
***Server version currently marked as experimental by the Satisfactory developers! Egg loads fine, but your mileage may vary in-game.***

**Note: At this time, you can only run *one* Satisfactory server on your Pterodactyl panel. See [Server Ports](#server-ports) for more info.**
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
- Configuration of the Server Query port.
- Configurable to automatically check for server updates on start via SteamCMD. Forcing validation is also configurable.
- Misc. settings listed below can be configured by an admin client via the game's UI, and are currently **not** set via the Egg:
    - Server Password
    - Admin Password
    - Auto-Save on Player Disconnect
    - Pause When No Players Online
    - ...and possibly more as the client's UI is developed further for more configuration options.
___
### Server Ports
Default server ports are listed below, and **only** the Server Query port can currently be changed. The current experimental version limits the default Game and Beacon ports from being changed, unless two instances of the server are ran on the same system (which cannot be done with Pterodactyl, since every server is ran on it's own containerized system). This is expected to change as the dedicated server is further developed. Also, your internal ports **must match** your external ports on your network (ie. you can't have an external port of 7778 forwarded to your 7777 internal port; they must match). **All three ports are required to be open for normal server behavior!**

| Description | REQUIRED UDP Port |
|---------|---------|
| **Game Port (Main Server Port in Pterodactyl)** | 7777 |
| Server Query Port | 15777 *(Configurable)* |
| Beacon Port | 15000 |

___
### Installation Requirements
No major requirements, other than RAM and Disk space noted below. You *do not* need to own the base game to host this server.
___
### Minimum RAM Requirement
This server requires a minimum of 4096 MiB of RAM to boot, but the developers recommend 6144 to 8192 MiB of RAM for 4 players.
___
### Minimum Disk Requirement
This server requires just under 5 GB of disk space to safely run properly. However, save files could easily surpass this amount, so 7-10 GB is recommended.
___
### Save File Location
[According to the developer](https://www.youtube.com/watch?v=Nn-1s87JJxc), save files will be able to be uploaded and downloaded by clients via their game client in the future. Until then, below is the save file location incase you would like to upload or download a save file manually (note that it is different from their wiki):

`/home/container/.config/Epic/FactoryGame/Saved/SaveGames/server`

Single-player save files can be uploaded here and are playable if desired.
___
### Errors/Warnings
The following errors or warnings you see in the console can safely be ignored:

```log
steamclient.so: cannot open shared object file: No such file or directory
[S_API] SteamAPI_Init(): Loaded '/home/container/.steam/sdk64/steamclient.so' OK.  (First tried local 'steamclient.so')
LogSteamShared: Warning: Steam Dedicated Server API failed to initialize.
```
The local file of 'steamclient.so' was attempted to be loaded, but could not because it is not present, causing the warning message. However, the backup `/home/container/.steam/sdk64/steamclient.so` is loaded successfully (this is the correct behavior according to the [Wiki](https://satisfactory.fandom.com/wiki/Dedicated_servers#SteamAPI_library_error)).

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
These seem to be common error messages with the current experimental version of the game.
