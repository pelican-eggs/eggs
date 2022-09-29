# Redis

## From their [Website](https://redis.io/)

Redis is an open source (BSD licensed), in-memory data structure store, used as a database, cache and message broker.

## Server Startup

You must first authenticate before trying to execute commands, to do this run `AUTH <YOUR_PASSWORD_HERE>` (without the `<>`). This should be the same as the password set in the `SERVER_PASSWORD` variable.

## Minimum RAM warning

It's recommended to have 4gb of RAM for redis

See here <https://docs.redislabs.com/latest/rs/administering/designing-production/hardware-requirements/>

## Server Ports

Ports required to run the server in a table format.

| Port    | default |
|---------|---------|
| Server  |  6379   |
