# LastOasis
***Updating your Egg?**: Ensure any existing servers have the latest Startup Command, new Startup Variables are set, **and you reinstall server!***
___
### Authors / Contributors
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
    <tr>
        <td align="center">
            <a href="https://github.com/gOOvER">
                <img src="https://avatars.githubusercontent.com/u/116325" width="50px;" alt=""/><br /><sub><b>gOOvER</b></sub>
            </a>
            <br />
            <a href="https://github.com/parkervcp/eggs/commits?author=gOOvER" title="Codes">💻</a>
            <a href="https://github.com/parkervcp/eggs/commits?author=gOOvER" title="Maintains">🔨</a>
        </td>
    </tr>
</table>
<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->

___
### Game Description
Last Oasis is a Nomadic Survival MMO. Earth has stopped rotating, and the last human survivors need to outrun the scorching Sun in a massive Open World. Traverse the world on your walker: a wooden, wind-powered machine inspired by Theo Jansen's amazing strandbeests

### SPECIAL NOTE
To run the server, you must increase container_pid_limit in Pterodactyl confic.yaml

go to: /etc/pterodactyl
edit config.yaml and change in line 65:

```container_pid_limit: 512```

to

```container_pid_limit: 2048```

Save the file and restart wings and gameserver.

restart wings: ```systemctl restart wings```

### Server Ports
- Default server ports are listed below, but all two ports can be changed freely.

- ***All two ports are required to be open/allocated for normal server behavior!***

| Port | Default (UDP) |
|---------|---------|
| Game | 5555 |
| Server Query | 27015 |

___
### Installation/System Requirements

|  | Bare Minimum | Recommended |
|---------|---------|---------|
| Processor | Recent x86/64 (AMD/Intel) processor. No 32 bit or ARM support. | Favours higher single-core performance over multiple cores. |
| RAM | 6144 MiB | 6144-8192 MiB (especially for 4 players or large save files) |
| Storage | 6 GB | 7-10 GB (or more, depending on save size or frequency) |

