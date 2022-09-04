# DDRaceNetwork Server

[DDraceNetwork](https://ddnet.tw/) is an actively maintained version of DDRace, a Teeworlds modification with a unique cooperative gameplay. Help each other play through custom maps with up to 64 players, compete against the best in international tournaments, design your own maps, or run your own server. The official servers are around the world. All ranks made on official servers are available worldwide and you can collect points!

## Requirements

- [amd64](https://en.wikipedia.org/wiki/X86-64) cpu architecture

*[arm64](https://en.wikipedia.org/wiki/AArch64) is not supported by this egg.*

## Configuration

Configure via egg variables. [Additional configurations](https://ddnet.tw/settingscommands/) can be added via `serverconfig.cfg` in server root files.

## Maps

Maps can be added via file browser or sftp.
Maps can be found in the [offical repository](https://github.com/ddnet/ddnet-maps) or on the offical website in [pre selected map packs](https://maps.ddnet.tw/compilations/).
Add maps into the `data/maps` directory (for ddnet clients) and converted maps (compatibility for teeworlds clients) into the `data/maps7` directory.
Notice that `maps7` maps can be downloaded [here](https://maps.ddnet.tw/compilations/maps7.zip) and should match by name with those maps that you chose for your `data/maps` directory. This allows vanilla teeworld clients to connect to the server.

## Version upgrade / downgrade

Make sure the version field in servers startup tab is empty (for latest version) or set to the desired version number, then run a server reinstall via the settings tab.
All gamefiles will be overwritten. The `serverconfig.cfg` and additionally placed `maps` or `maps7` files will persist.

## Server ports

Port is configurable. Default port 8303 for first instance, 8304+ for every additional instance.

| Port    | default |
|---------|---------|
| Game    | 8303    |
