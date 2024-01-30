# Palworld

### Steam Description
Fight, farm, build and work alongside mysterious creatures called "Pals" in this completely new multiplayer, open world survival and crafting game!

### Authors / Contributors
<table>
    <tr>
        <td align="center">
            <a href="https://github.com/Ballaual">
                <img src="https://avatars.githubusercontent.com/u/38478976" width="50px;" alt=""/><br /><sub><b>Alexander Ballauf</b></sub>
            </a>
            <br />
            <a href="https://github.com/parkervcp/eggs/issues/2669#issuecomment-1900216079" title="Codes">💻</a>
            <a href="https://github.com/parkervcp/eggs/commits?author=Ballaual" title="Maintains">🔨</a>
        </td>
        <td align="center">
            <a href="https://github.com/QuintenQVD0">
                <img src="https://avatars.githubusercontent.com/u/67589015" width="50px;" alt=""/><br /><sub><b>QuintenQVD0</b></sub>
            </a>
            <br />
            <a href="https://github.com/parkervcp/eggs/issues/2669#issuecomment-1899999796" title="Codes">💻</a>
        <td align="center">
            <a href="https://github.com/hackles">
                <img src="https://avatars.githubusercontent.com/u/30584261" width="50px;" alt=""/><br /><sub><b>heckler</b></sub>
            </a>
            <br />
            <a href="https://github.com/parkervcp/eggs/issues/2669#issuecomment-1900043987" title="Contributor">💡</a>
        </td>
        </td>
        <td align="center">
            <a href="https://github.com/danny6167">
                <img src="https://avatars.githubusercontent.com/u/388231" width="50px;" alt=""/><br /><sub><b>Daniel Barton</b></sub>
            </a>
            <br />
            <a href="https://github.com/parkervcp/eggs/issues/2669#issuecomment-1900100992" title="Codes">💻</a>
        </td>  
        <td align="center">
            <a href="https://github.com/Rodhin">
                <img src="https://avatars.githubusercontent.com/u/13395074" width="50px;" alt=""/><br /><sub><b>Rodhin</b></sub>
            </a>
            <br />
            <a href="https://github.com/parkervcp/eggs/issues/2669#issuecomment-1900153550" title="Codes">💻</a>
        </td> 
        <td align="center">
            <a href="https://github.com/B0rbor4d">
                <img src="https://avatars.githubusercontent.com/u/33213807" width="50px;" alt=""/><br /><sub><b>B0rbor4d</b></sub>
            </a>
            <br />
            <a href="https://github.com/parkervcp/eggs/issues/2669#issuecomment-1900213758" title="Contributor">💡</a>
        </td>
        <td align="center">
            <a href="https://github.com/Simsz">
                <img src="https://avatars.githubusercontent.com/u/12779829" width="50px;" alt=""/><br /><sub><b>Zach</b></sub>
            </a>
            <br />
            <a href="https://github.com/parkervcp/eggs/issues/2669#issuecomment-1899954711" title="Contributor">💡</a>
        </td>         
    </tr>
</table>

## Known Issues / FAQ

1) The server won't show up in the Community-Server tab.<br>
-> This is a known problem and the devs will hopefully fix that asap. Best choice is to connect by IP and Password.

2) The server has a memory leak.<br>
-> This is also an issue that they are aware of.<br>
-> The `bEnableInvaderEnemy` option seems to have a huge impact on the current RAM usage. Disabling it might be choice.<br>
-> Tip: Schedule a server restart every 6h. You might adjust the value according to your system!<br>

3) The server does not show up in the steam server list.<br>
-> This is currently and might never be supported.

4) The config file gets deleted / reset on server restart.<br>
-> Before editing the config file always make sure to fully stop the server first. Otherwise all changes wont be saved.

## Recommended server settings

### RAM

Due to at least one memory leak the server requires about 16-32GB RAM.<br>
Referring to the [official documentation](https://tech.palworldgame.com/dedicated-server-guide) you can start the server with 8GB but you will run out of memory very quickly.<br>
The minimum should be 16GB but 32GB are fairly recommended for now.<br>

### CPU

Intel / AMD processor with at least 4 cores.

### Storage

As of January 19th 2024 the server requires about 5GB of storage capacity. This might extend with further content/updates.

## Server Ports

| Port            | Default |
| --------------- | ------- |
| Game            | 8211    |
| RCON (optional) | 25575   |

The RCON port does not need to be allocated.