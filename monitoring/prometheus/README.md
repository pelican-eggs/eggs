# Prometheus

## From the [Prometheus](https://github.com/prometheus/prometheus) GitHub repository

The Prometheus monitoring system and time series database.

## Resource consumption

As Prometheus is a monitoring software that saves data in a timeseries database, it can take up massive amounts of disk space. Due to Prometheus design, a huge memory consumption is also possible.
To get started, a minimum of 3GB RAM and >=2.5GB disk space is recommended.
Keep in mind that those numbers can grow pretty quick for large monitored environments!

## Server Ports

Ports required to run the server in a table format.

| Port              | default |
|-------------------|---------|
| Prometheus server | 9090    |
