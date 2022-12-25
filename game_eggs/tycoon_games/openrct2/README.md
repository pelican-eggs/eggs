# OpenRCT2
***Note:** OpenRCT2 only recently (Jan. 2022) updated to support non-interactive Docker environments, and development is ongoing to improve it. Please understand future updates may be unstable, or this Egg may update in the future to accommodate changes.*
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
            <a href="https://github.com/parkervcp">
                <img src="https://avatars.githubusercontent.com/u/1207679" width="50px;" alt=""/><br /><sub><b>parkervcp</b></sub>
            </a>
            <br />
            <a href="https://github.com/parkervcp/eggs/commits?author=parkervcp" title="Codes">💻</a>
            <a href="https://github.com/parkervcp/eggs/commits?author=parkervcp" title="Contributor">💡</a>
        </td>
        <td align="center">
            <a href="https://github.com/janisozaur">
                <img src="https://avatars.githubusercontent.com/u/550290" width="50px;" alt=""/><br /><sub><b>janisozaur</b></sub>
            </a>
            <br />
            <a href="https://github.com/OpenRCT2/OpenRCT2/commits?author=janisozaur" title="Codes">💻</a>
            <a href="https://github.com/OpenRCT2/OpenRCT2/commits?author=janisozaur" title="Contributor">💡</a>
        </td>
    </tr>
</table>
<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->

___
### Game Description
From OpenRCT2's [Website](https://openrct2.io/):
> OpenRCT2 is an open-source re-implementation of RollerCoaster Tycoon 2 (RCT2), expanding the game with new features, fixing bugs and raising game limits. The gameplay revolves around building and maintaining an amusement park containing attractions, shops and facilities. The player must try to make a profit and maintain a good park reputation whilst keeping the guests happy. OpenRCT2 allows for both scenario and sandbox play. Scenarios require the player to complete a certain objective in a set time limit whilst sandbox allows the player to build a more flexible park with optionally no restrictions or finance.
___
### Server Ports
| Port | Default (TCP) |
|---------|---------|
| Game | 11753 |

___
### Installation/System Requirements

|  | Minimum |
|---------|---------|
| Processor | x86/64 (\*multiarch may be supported for develop builds, but has not been tested) |
| RAM | 256-512 MiB (depends on # of clients & park size) |
| Storage | 110 MB (*may require more if building from source*) |
| RCT2 Files | **Not required** |

___
### Save Files
Save files and autosaves are located in this directory:
```
/home/container/ServerData/save/
```
If the "Load Latest Autosave" startup variable is enabled, and the `autosave/` directory exists, the server will load the latest autosave instead of the specified Save File.
___
### Console Commands
Until support for console commands to interactive programs gets added to Pterodactyl, entering commands via the panel's console do nothing (reference issue [pterodactyl/panel#3712](https://github.com/pterodactyl/panel/issues/3712)).
___
### Becoming an Admin on the Server
Unfortunately, because console commands currently do not register, becoming the first admin on the server takes some steps, listed below:
1. Ensure the "Log Server Actions" startup variable is set to "true".
2. Start the server and join it with the client you want to make an admin.
3. Open `ServerData/serverlogs/<Server Name>/<Latest Date>.txt` and copy the SHA1 hash next to your client's username (note the username as well).
4. Then, open `ServerData/users.json`. Paste the hash into the "hash" value, change the "name" value to your client's username, and save the file.
5. Reboot the server, re-join it, and you should be an admin!

After becoming an admin, you can use the in-game users management window to add additional admins (or groups) more easily if you wish.
___
### Known Issues
The following are known issues that are unique to running OpenRCT2 on Pterodactyl, but likely can only be fixed by further development/updates from OpenRCT2.
- Configuring a password on the server disallows non-admin clients from entering in a password in their client to connect; it just disconnects them. Admin clients can still join normally. (reference issue [OpenRCT2/OpenRCT2#16396](https://github.com/OpenRCT2/OpenRCT2/issues/16396))
- You may rarely run into the server crashing on start due to a "Floating point exception(core dumped)" error. If this occurs to you, please help with OpenRCT2 development by doing the following:
	1. Add the following to the beginning of your server's startup command: `SEGFAULT_SIGNALS=fpe LD_PRELOAD=/lib/x86_64-linux-gnu/libSegFault.so `
	2. Start the server. If it boots normally, nothing extra will print. If it crashes, it will print a stack trace to the console.
	3. If a crash occurs, copy the entire stack trace, and save it to a log sharing website (like [Hastebin](https://www.hastebin.com)).
	4. [Open a new Bug Report Issue with OpenRCT2](https://github.com/OpenRCT2/OpenRCT2/issues/new?assignees=&labels=bug&template=bug_report.yaml) and share your logs with them.
