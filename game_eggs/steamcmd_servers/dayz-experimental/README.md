# DayZ (Experimental)

**Author's Notice:** This egg ***only*** works with the experimental branch of DayZ (Standalone), and it will ***only*** accept players who are running the experimental client! At time of writing (May 2022), there is ***no*** native Linux server binary for the Stable branch, and compatibility with Wine is poor for the Windows binary.

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
    </tr>
</table>
<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->

___

### Game Description

From Bohemia Interactive's [Website](https://dayz.com/):
> How long can you survive a post-apocalyptic world? A land overrun with an infected "zombie" population, where you compete with other survivors for limited resources. Will you team up with strangers and stay strong together? Or play as a lone wolf to avoid betrayal? This is DayZ – this is your story.
___

### Egg Capabilities

- Able to download server updates on startup
- Able to download, update, and load Steam Workshop mods on startup (\*see [Installation/System Requirements](#installationsystem-requirements))
  - Also accepts server-side only mods.
  - Checks for mod updates against their Steam Workshop page's last update for quick and efficient update checks.
  - Automatically moves mod `.bikey`'s to the `/keys/` directory.
  - Note: These features only work with mods in the `@workshopID#` format. Manually uploaded mods are not automatically updated.
- Multiple basic settings found within the `serverDZ.cfg` file can be easily set from the server's Startup tab
  - Server name, passwords, disable third person, persistant time, and more...
- Max Players is configurable and able to be host enforced (\*see [Recommended Egg Modifications](#recommended-egg-modifications))
- Additional [DayZ startup parameters](https://community.bistudio.com/wiki/DayZ:Server_Configuration#Launch_Parameters) can be added to fine-tune performance
- [WHMCS](https://www.whmcs.com/) compatible (\*see [Recommended Egg Modifications](#recommended-egg-modifications))

___

### Server Ports

Default server ports are listed below, but the Main port can be any port.

| Port | Default (UDP) |
|---------|---------|
| **DayZ Game (Main)** | 2302 |
| Steam Query (Optional?) | 27016 |

___

### Installation/System Requirements

|  | Bare Minimum | Recommended |
|---------|---------|---------|
| Processor | Recent x86/64 (AMD/Intel) processor. No 32-bit or ARM support. | ---- |
| RAM | 4096 MiB | 8192 MiB |
| Storage | 3 GB | 7+ GB (depends on how many mods are installed) |
| Network | 0.512 Mbit/s/player | 1-5 Mbit/s/player |
| Host OS | Most stable Linux OS branches should work | Using the latest kernel version for your installed OS can prevent some edge-case installation/boot issues. |
| Game Ownership | Not required to start. | Required for automatic Steam Workshop mod downloading to work. However, this is optional functionality, and mods can be manually uploaded to the server if desired. Hosts may feel free to change the "Disable Mod Downloads/Updates" variable to `1` if they would not like to offer it's functionality to clients. |

___

### Recommended Egg Modifications

The following are highly recommended variable modifications you can make to the egg after importing it to your panel. While viewing this egg, simply go to the "Variables" tab of the egg editor to make these changes.

#### Default Steam Username & Password

- To make deploying servers easy (**or if you are using WHMCS**), it is recommended to edit the default values of "Steam Username" and "Steam Password" to your Steam account dedicated for hosting. This will make all newly installed servers use these credentials. **DO NOT** make these fields visible to the end user so that they can use their own Steam accounts; the panel will save their Steam credentials in **plain text**, which is a BIG NO NO for security and privacy.

#### Restrict Max Players

- If you would like to restrict the maximum number of players that can join your client's server, you can change the permissions of the "Max Players" variable so that clients can only view this value (and not edit it). It's default value can also be changed, or the value can be changed on a server-by-server basis as desired.
