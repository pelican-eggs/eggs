# Folding@Home

[Folding@Home](https://foldingathome.org/) is a distributed computing project aimed at simulating protein folding and other molecular dynamics.

## User Account

You can setup an User Account to track your PPD (Points per Day) and done WUs (Work Units). To get a Passkey visit the [Folding@home Passkey Site](https://apps.foldingathome.org/getpasskey)

## Teams

You can add your earned Points to a Team that you support. This is not nessesary as the points are just to track how much work was done (with some exeptions). Here is the [full List of the Teams](https://stats.foldingathome.org/team)

## Remote Control

You can connect via FAHControl to your instance. WebUI is not supported because it wouldn't be password protected.

## CPU Usage Control

There are three power modes:
- light
- medium
- full

Only light and medium are useful because full enables gpu which is not supported in this egg.
Light uses half of the available **cpu cores of your system**. Full uses **all of your cpu cores.** You can still limit the cpu usage via the panel.

## Supported Versions

Versions < v8 are supported. v8 is still beta and wont work with this egg. Get the latest v7 version number here: [Folding@Home Downloadserver](https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-64bit/)

## Server Ports

| Port | default |
| ---- | ------- |
| FAHControl  | 36330    |
