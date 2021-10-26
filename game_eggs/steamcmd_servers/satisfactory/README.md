# Satisfactory
***Server version currently marked as experimental by the Satisfactory developers! Egg loads fine, but your mileage may very in-game.***
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
- Port configuration for Game, Query, and Beacon ports.
- Configurable to automatically check for server updates on start via SteamCMD. Forcing validation is also configurable.
- Misc. settings listed below can be configured by an admin client via the game's UI, and are currently **not** set via the Egg:
    - Server Password
    - Admin Password
    - Auto-Save on Player Disconnect
    - Pause When No Players Online
    - ...and possibly more as the client's UI is developed further for more configuration options.
___
### Installation Requirements
- No major requirements, other than RAM and Disk space noted below. You *do not* need to own the base game to host this server.
___
### Server Ports
Default server ports are listed below, but all can be configured differently (at least according to the [wiki](https://satisfactory.fandom.com/wiki/Dedicated_servers); developers highly recommend using the default ports during the experimental release). **All three ports are required for normal server behavior.**

| Port | Default |
|---------|---------|
| **Game Port (Main Server Port in Pterodactyl)** | 7777 |
| Server Query Port | 15777 |
| Beacon Port | 15000 |

___
### Minimum RAM Requirement
This server requires a minimum of 4096 MiB of RAM to boot, but the developers recommend 8192 MiB of RAM for 4 players.
___
### Minimum Disk Requirement
This server requires just under 5 GB of disk space to safely run properly. However, save files could easily surpass this amount, so 7-10 GB is recommended.
___
