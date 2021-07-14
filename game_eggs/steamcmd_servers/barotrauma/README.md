# Barotrauma
### From their [Steam Description](https://store.steampowered.com/app/602960/Barotrauma/)
Barotrauma is a 2D co-op survival horror submarine simulator, inspired by games like FTL: Faster Than Light, Rimworld, Dwarf Fortress and Space Station 13. It’s a Sci-Fi game that combines ragdoll physics and alien sea monsters with teamwork and existential fear.


### Server Ports
Ports required to run the server in a table format.

| Port       | default |
|------------|---------|
| Game Port  | 27015   |
| Query Port | 27016   |

**WARNING
You must edit the port and server settings in serversettings.xml file or your server will not work!**

### No console
Barotrauma server does not currently have server console, it will just spam random messages. You have to add yourself as admin and type commands in-game. Admin file is located at Data/clientpermissions.xml, example config is below.

```<?xml version="1.0" encoding="utf-8"?>
<ClientPermissions>
  <Client
    name="YOUR INGAME NAME HERE"
    steamid="YOUR STEAM64ID here"
    preset="Admin" />  
</ClientPermissions>
