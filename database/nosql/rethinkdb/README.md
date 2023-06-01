# Rethinkdb

## [Website](https://rethinkdb.com/)

The open-source database for the realtime web
## Notes

- The web dashboard by default is disabled (remove the ` --no-http-admin` flag from startup to enable).
- It defaults bind to 0.0.0.0 what is all interfaces so it is public availble.
- On first start a admin pasword is randomly generated.


### Server Ports

Ports required to run the server in a table format.

| Port    | default |
|---------|---------|
| cluster | 25567   |
| driver  | 25568   |
| http    | 25569   |