# Icarus

***NOTE: Server version currently marked as Beta by the developers.***
___

### Authors / Contributors

<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
    <tr>
        <td align="center">
            <a href="https://github.com/BolverBlitz">
                <img src="https://avatars.githubusercontent.com/u/35345288" width="50px;" alt=""/><br /><sub><b>BolverBlitz</b></sub>
            </a>
            <br />
            <a href="https://github.com/BolverBlitz" title="Codes">💻</a>
            <a href="https://github.com/BolverBlitz" title="Maintains">🔨</a>
        </td>
    </tr>
</table>
<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->

___

### Game Description

Icarus is a session-based survival game for up to 8 co-op players or solo players, where most gameplay occurs during timed missions. Players accept contracts for missions on a space station orbiting the planet, and drop down to its terrain to attempt the objectives. Once a mission timer is complete, the drop-pod returns to the station. If the player fails to return in time, their workshop items are left on the surface and their progress is lost. 
There is also support for an OpenWorld where without resets.

___

### Egg Capabilities

- Currently runs the Windows build of the server via Wine64.
- Auto-Updates on restart.

___

### Server Ports

- Default server ports are listed below, but all three ports can be changed freely.
- Clients connect via the server list in game.

| Port    | Default | Protocol |
|---------|---------|----------|
| Game    | 17777   | UDP      |
| Query   | 27015   | UDP      |

___

### Installation/System Requirements

|           | Recommended  | Extra info  |
|-----------|--------------|-------------|
| Processor | Recent x86/64 (AMD/Intel) processor. No 32 bit or ARM support. | Unsubstantiated reports say that RCON uses significantly more CPU when enabled, but I have not been able to replicate myself. |
| RAM       |  8-16 GB     |
| Storage   |  14 GB (or more, depending on save size or frequency) |

___

#### Save File and Custom Settings Location

You can define a custom dir for settings by adding `-UserDir=` to the startparameter. [More Info](https://github.com/RocketWerkz/IcarusDedicatedServer/wiki/Server-Config-&-Launch-Parameters#-userdir)

#### Server Game Settings

[Server-Config & Launch-Parameters](https://github.com/RocketWerkz/IcarusDedicatedServer/wiki/Server-Config-&-Launch-Parameters)