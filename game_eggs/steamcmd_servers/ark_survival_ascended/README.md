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

1) Proxmox VM(s): You'll need to change your Processor Type to `Host` (Default: kvm64)

2) ARK's wiki heavily reference A:SE and not all features are available in A:SA.

## Recommended server settings

### Minimum RAM

This server requires about 11GB of RAM to run with no players on a default map.

See the following - <https://ark.wiki.gg/wiki/Dedicated_server_setup#RAM>

## Server Ports

Note: The Peer port is not an option that can be set and will always be +1 from the Game Port!

| Port            | Default |
| --------------- | ------- |
| Game            | 7777    |
| Peer   (Game+1) | 7778    |
| Query           | 27015   |
| RCON (optional) | 37015   |
