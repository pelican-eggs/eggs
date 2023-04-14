# Folding@Home

[Folding@Home](https://foldingathome.org/) is a distributed computing project aimed at simulating protein folding and other molecular dynamics.

## Remote Control

You can connect via FAHControl to your instance. WebUI is not supported because it wouldn't be password protected.

## CPU Usage Control

There are three power modes:
- light
- medium
- full

Only light and medium are useful because full enables gpu which is not supported in this egg.
Light uses half of the available cpu cores **of your system**. Full uses **all of your cpu cores.** You can still limit the cpu usage via the panel.

## Supported Versions

Versions < v8 are supported. v8 is still beta and wont work with this egg. Get the latest v7 version number here: [Folding@Home Downloadserver](https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-64bit/)

## Server Ports

| Port | default |
| ---- | ------- |
| FAHControl  | 36330    |
