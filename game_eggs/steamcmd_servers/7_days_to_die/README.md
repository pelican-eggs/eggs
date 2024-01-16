# 7 Days to Die

Steam Description
Set in a brutally unforgiving post-apocalyptic world overrun by the undead, 7 Days to Die is an open-world game that is a unique combination of first person shooter, survival horror, tower defense, and role-playing games. It presents combat, crafting, looting, mining, exploration, and character growth, in a way that has seen a rapturous response from fans worldwide. Play the definitive zombie survival sandbox RPG that came first. Navezgane awaits!

## Server Ports

7 Days to Die requires up to 6 ports

| Port    | default       |
|---------|---------------|
| Game    | 26900 - 26902 |
| RCON    | 8080 - 8081   |
| webmap  | 8082          |

## Sample ignore file for backups 

By default the backup includes a lot of files that can be reacquired by pulling the image. Using the following file limits backups to the files that are unique to your server: your config files, logs, saves and generated worlds.

```
# Ignore all
*
# Except server config file
!serverconfig.xml 
# Except server data dir
!.local/
# Except logs
!logs/
```
