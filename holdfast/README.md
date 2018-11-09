# Holdfast: Nations At War

### From the Developers
Holdfast: Nations At War is an online multiplayer first and third person shooter focusing on a combination of teamwork and individual skill. Take part in historic clashes on land and at sea waged by the most powerful nations during the great Napoleonic Era. Charge into battle with over 150 players per server!

### Server Ports

Holdfast requires three ports:

| Port  | default |
|-------| ------- |
| Game  | 20100   |
| Comm  | 8700    |
| Query | 27000   |

### Other Notes

* You must own Holdfast: Nations At War on Steam in order to download the server files.
* Adding the Steam password is optional, but Steam username is necessary. If password is left blank, you will need to input your password and 2FA code (if enabled) on server startup.
* The server will fail to start on the initial startup, but will run fine each subsequent startup/restart. Appears to be caused by an issue with wine and/or Xvfb.
* Requires at least 12 GB of disk per instance.
* Acceptable port ranges:
  * Game - 20100 to 20300
  * Comm - 8700 to 8900
  * Query - 27000-29000
* Server documentation: http://www.holdfastgame.com/forum/index.php?topic=1975.0
