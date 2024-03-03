# Longvinter
Longvinter is a multiplayer, third-person sandbox game that implements Crafting, Farming, Building, Trading, and PVP.
___

### Server Ports

- Default server ports are listed below, but all three ports can be changed freely.
- **Note:** The query ports does not seem to be used at all at the moment (at least on the linux server).

| Port | Default |
|---------|---------|
| **Game (Primary Port in Pterodactyl)** | 7777 (UDP) |
| Query | 27015 (UDP/TCP) |
| Query +1 | 27016 (UDP/TCP) |

___

### Installation/System Requirements

|  | Minimum | 
|---------|---------|
| RAM | 2048 MiB |
| Storage | 2 GB |

___

### Known Errors/Warnings

The following errors or warnings you see in the console can safely be ignored:

```log
[2022.05.15-00.07.35:353][508]LogEOS: Error: UpdateSession: 
Successfully updated session 'Test' with ID '18exxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
```

↑ This error is displayed regularly, but does not affect the server functions. An  [open issue](https://github.com/Uuvana-Studios/longvinter-linux-server/issues/40) already exists in the developers repository.