# Project Zomboid

Project Zomboid is the ultimate in zombie survival. Alone or in MP: you loot, build, craft, fight, farm and fish in a struggle to survive. A hardcore RPG skillset, a vast map, a massively customisable sandbox and a cute tutorial raccoon await the unwary. So how will you die?

## Configuration

Project Zomboid creates Backup on Server Start by copying its SaveData into Temp and then zipping it up, after a few days these files are so large that your Server will fail on Startup with Error: `java.util.concurrent.ExecutionException: java.io.IOException: No space left on device`. 

Either disable Backups in the Project Zomboid Server Settings via `BackupsOnStart=false` or increase the `tmpfs_size` in your wings config.yml configuration file.

## Server Ports

Project Zomboid requires one port for game data and one port for Steam.

```log
> *** SERVER STARTED ****.
> *** Steam is enabled.
> Server is listening on port 16261 (for Steam connection) and port 16262 (for UDPRakNet connection).
> Clients should use 16261 port for connections.
```

| Port        | default |
|-------------|---------|
| DefaultPort | 16261   |
| UDPPort     | 16262   |
