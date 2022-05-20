# Arma Reforger

***Server version currently marked as early access by the Arma developers! Check back often for egg updates as more features are added to the server software.***
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

From Bohemia Interactive's [Website](https://reforger.armaplatform.com/):
> Experience authentic Cold War combat and join friends in the struggle for a sprawling, 51 km² mid-Atlantic island — or take on the role of Game Master and create your very own scenarios for others to enjoy.
___

### Egg Capabilities

- Configurable to automatically check for server updates on start via SteamCMD. Forcing validation is also configurable.
- Able to download and load Arma Reforger Workshop mods on startup (requires manual editing of the `config.json` file).
- Configuration of multiple common settings in the `config.json` file via Startup Parameters:
  - Server Name, Passwords, Scenario ID, Disable Third Person, Max FPS, and more...
- Max Players is configurable and able to be host enforced (\*see [Recommended Egg Modifications](#restrict-max-players)).
- [WHMCS](https://www.whmcs.com/) compatible.

___

### Server Ports

| Port | Default (UDP) | Notes |
|---------|---------|---------|
| **Game** | 2001 | **Required** / Primary port in Pterodactyl |
| Steam communication | 50000..65000 | Documented, but not seemingly needed |
| Steam Query | 17777 | Used to provide Steam with server status (but does not seemingly need to be forwarded) |

___

### Installation/System Requirements

|  | Bare Minimum | Recommended |
|---------|---------|---------|
| Processor | Recent x86/64 (AMD/Intel) processor. No ARM support. | Can use up to 300-600% CPU under load with uncapped FPS (set Max FPS to prevent). |
| RAM | 3328 MiB | 6144-8192 MiB |
| Storage | 5 GB | 7-10 GB (or more, depending on number of mods downloaded) |
| Network | If node is behind a NAT, will require Egg Modification (\*see [Define Host Registered Bind Address](#define-host-registered-bind-address) | Pterodactyl Node is not behind a NAT |
| Game Ownership | Not required to start or download mods. | ---- |

___

### How to Add Mods

**TODO**

___

### Recommended Egg Modifications

The following are highly recommended variable modifications you can make to the egg after importing it to your panel.

#### Define Host Registered Bind Address

Due to a current behavior of Pterodactyl, `SERVER_IP` will not return the node's public IP address if it is behind a NAT; it will return its private IP address. Unfortunately at this time, Arma Reforger **requires** the server's public IP address to be strictly defined within `config.json`. If you know your node is behind a NAT (or you are finding your node's private IP address being added to `config.json`), you will need to edit this egg after importing it by following these steps:

1. As a panel admin, find and open the egg within your Nests tab.
2. On the first tab, "Configuration", find the "Configuration Files" box under the "Process Management" section.
3. Carefully (as to not touch anything else), find `{{server.build.default.ip}}` and replace it with your node's public IP address. If done correctly, the line should now look something like this:

```json
"    \"gameHostRegisterBindAddress\"": "    \"gameHostRegisterBindAddress\": \"123.4.56.789\",",
```

#### Restrict Max Players

If you would like to restrict the maximum number of players that can join your client's server, you can change the permissions of the "Max Players" variable so that clients can only view this value (and not edit it). It's default value can also be changed, or the value can be changed on a server-by-server basis as desired.
