# Avorion

A procedural co-op space sandbox where players can build their own space ships out of dynamically scalable blocks. Fight epic space battles, explore, mine, trade, wage wars and build your own empire to save your galaxy from being torn apart by an unknown enemy.

## Server Ports

Avorion requires 4 ports to run.  Despite claiming to require 4 ports, the game port is the only one that appears to have a config option.

| Port        | default |
|-------------|---------|
| Game        | 27000   |
| Query       | 27003   |
| Steam Query | 27020   |
| Steam       | 27021   |

Additionally the server can be configured with an RCON port.  RCON will be disabled if a password is not specified.

| Port        | default |
|-------------|---------|
| RCON        | 27015   |

## RCON

If you plan to use RCON it currently needs to be manually configured in the server.ini file.  At some point server variables will be added.
