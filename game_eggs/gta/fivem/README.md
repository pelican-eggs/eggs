# FiveM 
## From the [FiveM](https://fivem.net/) Site
FiveM is a modification for Grand Theft Auto V enabling you to play multiplayer on customized dedicated servers.

# Notice
Currently the script can get versions from the builds site.

The `FIVEM_VERSION` variable.
* Defaults to `latest` which is the latest recommended
* Can be set to a specific version Ex. `2431-350dd7bd5c0176216c38625ad5b1108ead44674d`.

The `DOWNLOAD_URL` only needs to be used if they turn on ddos protection. The variable needs to point to a `fx.tar.xz` file as I am too lazy to update the entire script.

# txAdmin
txAdmin is now supported and disabled by default. You set `TXADMIN_ENABLED` to `1` to enable it.

The last update to the egg changes the server to use txadmin to run. On first startup it will print a key to use to sign into the txadmin panel.

### Your server will not go online until it's started from txadmin.

## Server Ports
Ports required to run the server in a table format.

| Port    | default |
|---------|---------|
| Game    | 30110   |
| Game+1  | 30120   |
| txAdmin | 40120   |
