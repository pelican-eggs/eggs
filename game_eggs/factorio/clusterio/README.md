# Clusterio

## Introduction

Clusterio (https://github.com/clusterio/clusterio) is a clustered Factorio server manager that provides the tooling for implementing cross server interactions in Factorio.
It was previously best known for implementing cross server transfer and cloud storage of items via teleporter chests.
But this functionality has been pulled out of Clusterio into its own plugin for Clusterio named [Subspace Storage](https://github.com/clusterio/subspace_storage).

By itself Clusterio doesn't change the gameplay in any way, you could even use Clusterio to manage completely vanilla Factorio servers.
Plugins do the work of modding in the visible changes into the game, see the [Plugins section](#plugins) for ready-made plugins you can install into a Clusterio cluster.

## Features

- Clustered Factorio server management allowing you manage the running of Factorio servers across a fleet of physical servers from both a web interface and a command line interface.

- User list management for synchronizing in-game admins, whitelisted users, and bans to all the servers in the cluster.

- Integrated support for exporting statistics for the whole cluster to Prometheus via a single metrics endpoint.

- Extensive plugin support for adding your own cross server features to Factorio using Clusterio's communication backbone.

## Setup

Clusterio uses a Controller/Host system setup, with the Controller server running the Web UI and controlling which Hosts run which Instances.

The Controller server runs a web server that needs to be reachable for cluster management by the user, and by the other nodes to manage them.

The Host server runs the factorio server, and will need any mods manually importing at this time, including the Factorio mods for the Clustorio Library(https://mods.factorio.com/mod/clusterio_lib) and Subspace Storage(https://mods.factorio.com/mod/subspace_storage).

Both only require a single port each.

Server Mode controls if the server is a Controller or Host, and each varaible is labeled as required for Controller, Host or All. Please ensure you fill in all required variables.

Set up the Controller server first, and from there you can generate the Controller URL and Controller Token required for the Host servers to connect.

Additional configuration options can be found in config-Controller.json and config-Host.json as relevant.

Changes to the Cluster will only be written out to the database on a graceful stop.

## Server Ports

Clusterio requires a single port

| Port       | default    |
|------------|------------|
| Controller HTTP| 8081       |
| Host Game | 34197      |
