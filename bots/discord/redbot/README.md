# Red-DiscordBot

## From their [Github](https://github.com/Cog-Creators/Red-DiscordBot)

A multifunction Discord bot

## Server Ports

No port are required to run Red.

if you want to use the internal Lavalink Server, you need to allocate port 2333 as primary

## Additional Requirements

When using the Audio Cog the bot will attempt to save files to /tmp resulting in a disk space error.  You may also see this same error when attempting to install a cog, due to pip using /tmp to build the requirements.  To resolve this error you must increase the size of `tmpfs` using custom container policy.

For additional details see:
<https://pterodactyl.io/wings/1.0/configuration.html#other-values>

### Mods/Plugins may require ports to be added to the server
