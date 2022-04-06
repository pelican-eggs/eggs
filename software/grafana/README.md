# Grafana

## From the [Grafana](https://github.com/grafana/grafana) GitHub

The open and composable observability and data visualization platform.
Visualize metrics, logs, and traces from multiple sources like Prometheus, Loki, Elasticsearch, InfluxDB, Postgres and many more.

## Initial credentials

After the first start of Grafana, you can login using the following credentials:

- Username: admin
- Password: admin

## Update support

The egg _should_ keep the data and conf folder when reinstalling. Therefore a reinstallation with "latest" as the selected version can be used to update Grafana.

If you want to reset the server completly, remove the `conf` and `data` directories manually before reinstalling.

## Server Ports

Ports required to run the server in a table format.

| Port         | default |
| ------------ | ------- |
| Webinterface | 3000    |
