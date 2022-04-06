# Loki

## From the [Loki](https://github.com/grafana/loki) GitHub repository

Loki is a horizontally-scalable, highly-available, multi-tenant log aggregation system inspired by Prometheus. It is designed to be very cost effective and easy to operate.

## Working with Loki

To get logs "into" Loki you need a scrape agent, such as official [Promtail](https://grafana.com/docs/loki/latest/clients/promtail/installation/) or a library for your app that can push logs through HTTP endpoint (gRPC endpoint is disabled in Docker enviroment by default)

## Resource consumption

As this egg sets up Loki in single node mode, it can consume a lot of disk space really fast. It is possible to setup different kind of storages for different parts of Loki files. For further information refer to official [Loki documentation](https://grafana.com/docs/loki/latest/operations/storage/).

To get started, you can go with a minimum of 3GB RAM and >=2.5GB disk space.

Keep in mind that those numbers can grow pretty quick!

## Server Ports

Ports required to run the server in a table format.

| Port        | default |
|-------------|---------|
| Loki server | 3100    |
