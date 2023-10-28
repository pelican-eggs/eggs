# ARK: Survival Ascended

Steam Description :
ARK is reimagined from the ground-up into the next-generation of video game technology with Unreal Engine 5! Form a tribe, tame & breed hundreds of unique dinosaurs and primeval creatures, explore, craft, build, and fight your way to the top of the food-chain. Your new world awaits!

## Troubleshooting

Due to using `tail -F ...` to follow the current server log, we are unable to also detect crashing (server stopping). This is obvious when the CPU hits 0% and RAM is around 5MB. However, more details are available in the `ShooterGame/Saved/Crashes/UECC-Windows-*/CrashContext.runtime-xml`


## Recommended server settings

### Minimum RAM

This server requires about 8-10GB of RAM to run with no players on a default map.

See the following - <https://ark.wiki.gg/wiki/Dedicated_server_setup#RAM>

## Server Ports

Note: RCON is currently not documented as of 10/28/2023

| Port            | Default |
| --------------- | ------- |
| Game            | 7777    |
| Raw UDP         | 7778    |
| Query           | 27015   |
| RCON (optional) | 27020   |
