# ARK: Survival Ascended

Steam Description :
ARK is reimagined from the ground-up into the next-generation of video game technology with Unreal Engine 5! Form a tribe, tame & breed hundreds of unique dinosaurs and primeval creatures, explore, craft, build, and fight your way to the top of the food-chain. Your new world awaits!

## Troubleshooting

1) Try starting the server with no mods on a fresh install.

2) If there are crash logs, they will be available in the Files at `ShooterGame/Saved/Crashes/UECC-Windows-*/CrashContext.runtime-xml`

### Crash Identifiers

Crashes will either stop the server or display 0-5% CPU usage.
The number is in reference to RAM/Memory usage.

1) Server crashing around 500MB is probably either a config issue or a corrupted install.

2) Server crashing around 750MB is probably commandline issue.

3) Server crashing around 1GB is probably either a MOD conflict or corrupted SavedArks files.


## Known Issues

1) ARK's wiki heavily reference A:SE and not all features are available in A:SA.


## Recommended server settings

### Minimum RAM

This server requires about 11GB of RAM to run with no players on a default map.

See the following - <https://ark.wiki.gg/wiki/Dedicated_server_setup#RAM>

## Server Ports

Only the Game Port needs to be publicly accessible.
Note: RCON doesn't need to be public but is required for console commands (in ptero)

| Port            | Default | Protocol
| --------------- | ------- | -------- |
| Game            | 7777    | UDP	   |
| RCON            | 27020   |

To host multiple servers, just change the Game and RCON ports. Don't forget to add both Game Ports to your Firewall/ Router/ Port Forwarding/ NAT.

Example:

| Server 1        | Network Port | Panel Port |
| --------------- | ------------ | ---------- |
| Game            | 7777         | 7777       |
| RCON            | 27020        | 27020      |

| Server 2        | Network Port | Panel Port |
| --------------- | ------------ | ---------- |
| Game            | 7778         | 7778       |
| RCON            | 27021        | 27021      |

Make sure that the ports that you allocate to your machine and the ones you use in the panel match.
