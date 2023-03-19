# Astroneer

Steam description :  Explore and reshape distant worlds! Astroneer is set during the gold rush of the 25th century: players must explore the farthest reaches of space, risking their lives and resources in a hostile environment for a chance to become a millionaire.

## Install notes

The following variables are required to prevent the server to crash on startup :
* Public IP : Used to register the server. Must be the IP used to join the server.
* Server Owner Name : Steam username of the server owner. It also set the given user as owner and administrator of the server.
* Server Owner Guid : Steam id of the server owner. It also set the given user as owner and administrator of the server. ((Steam FAQ)[https://help.steampowered.com/en/faqs/view/2816-BE67-5B69-0FEC])

## Minimum RAM warning

Astroneer required at least 700MiB to run. If more than one player will connect, 1GiB seems to be a minimum.

## Minumim Sorage warning

Astroneer required at least 3GiB. The size may increase with larger save file.

## Server Ports

Astroneer requires a single port to run.

| Port        | default |
|-------------|---------|
| Game        | 27000   |

### Notes

27000 is the default port, but any port can be used.


## Client Configuration

To be able to connect to the server you need to edit Engine.ini (located at %LocalAppData%\Astro\Saved\Config\WindowsNoEditor\Engine.ini) on every player's computer by adding the following :

```
[SystemSettings]
net.AllowEncryption=False
```