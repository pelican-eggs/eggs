# Project Zomboid

Project Zomboid is the ultimate in zombie survival. Alone or in MP: you loot, build, craft, fight, farm and fish in a struggle to survive. A hardcore RPG skillset, a vast map, a massively customisable sandbox and a cute tutorial raccoon await the unwary. So how will you die?

## Server Ports

Project Zomboid requires one port for Steam and an additional **one port per player**.  Additional ports are allocated as they connect.

For example, when configured with a base allocation of 27016:
```
Zomboid Steam Server started, ports 27016 and 27016 must be open on the router
Connected new client kubi ID # 0 and assigned DL port 27017
Connected new client kubi2 ID # 1 and assigned DL port 27018
```

If you're experiencing issues with players connecting it's likely because you have not allocated enough ports.  These ports **must be in order** following the Steam port.

| Port        | default |
|-------------|---------|
| Game        | 8766    |
| Player1     | 8767    |
| Player2     | 8768    |
| ...         | 8769    |
