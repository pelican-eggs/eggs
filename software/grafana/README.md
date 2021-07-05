# Grafama

### From the [Grafana](https://github.com/grafana/grafana) GitHub
The open and composable observability and data visualization platform.
Visualize metrics, logs, and traces from multiple sources like Prometheus, Loki, Elasticsearch, InfluxDB, Postgres and many more.

### Configuration recommendation
If you do not manually setup SSL, restrict access to the exposed unencrypted webserver using a firewall.
Use a reverse proxy (with SSL termination) to make Grafana accessible through ports 80 or 443 alongside
other services on your local webserver.

# Update support
The egg _should_ keep the data and conf folder when reinstalling. Therefore a reinstallation with "latest" as the selected version
can be used to update Grafana. During a reinstallation all plugins will be updated too. Newly added plugins will be installed during
a reinstallation.

If you want to reset the server completly, remove the `conf` and `data` directories manually before reinstalling.

### Server Ports

Ports required to run the server in a table format.

| Port         | default |
| ------------ | ------- |
| Webinterface | 3000    |
