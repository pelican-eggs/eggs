# Yuzu Emulator Dedicated Multiplayer Room


## From their [Github](https://github.com/yuzu-emu/yuzu-mainline)

## Description

This egg can be used to host dedicated multiplayer rooms for the Yuzu emulator.

## Install notes

Running this server requires almost no resources, but the installation involves compiling the binary. This is needed because yuzu unfortunately does not release their server binaries for Linux. Depending on your configuration, the installation part may take 5 minutes or more.

To update, simply run the installer again.

## Minimum RAM warning

8 MiB is enough, but 16 MiB is recommended

## Minumim Sorage warning

1MiB is required, but 50 MiB is recommended to have some spare space for core dumps/logs

Note: the install part requires ~ 5GiB of free space

## Server Ports

Ports required to run the server in a table format.

| Port    | default |
|---------|---------|
| Game    | 24872   |

### Notes

- 24872 is the default port, but any port can be used.
- Banlist is currently not supported. Upon startup, an error will be shown about the missing banlist, but the server will work regardless.
