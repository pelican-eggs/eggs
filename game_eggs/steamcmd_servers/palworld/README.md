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
-> As there are so many people creating dedicated servers you might load a few times more servers (Press the load 200 next servers).<br>
-> You might press the button for a while until you are able to find the server with your name!

2) As of now (release day - January 19th 2024) you are not able to join a password protected server by IP. 

3) The server does not show up in the steam server list.<br>
-> This is currently and might never be supported.

## Recommended server settings

### RAM

Referring to the [official documentation](https://tech.palworldgame.com/dedicated-server-guide) you should use at least 8GB of RAM for your server to run.<br>

### Storage

As of January 19th 2024 the server requires about 5GB of storage capacity. This might extend with further content/updates.

## Server Ports

Note: RCON is disabled by default.<br>
You can enable it inside the cofig (/home/container/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini)<br>

| Port            | Default |
| --------------- | ------- |
| Game            | 8221    |
| RCON (optional) | 25575   |

The ports can be changed. Dont forget to edit your config file...