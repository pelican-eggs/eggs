# MongoDB

## From their [Website](https://www.mongodb.com/)

MongoDB is a general purpose, document-based, distributed database built for modern application developers and for the cloud era.

### MongoDB free monitoring.

To disable the message about free monitoring you can run `db.disableFreeMonitoring()`.

## Security

By default, MongoDB **does not enforce access control**, meaning that even if you set an admin username and password in the settings of your Pterodactyl server, **anyone will be able to connect to the database without authentication**, and perform any operation.

> :warning: This is why we recommend to expose your MongoDB database only to your local network, if possible

### Enabling authentication

To enable authentification, you need to edit the following lines to your `mongod.conf` file:

```yaml
security:
  authorization: "enabled"
```

> :closed_lock_with_key: To learn more about MongoDB security, you can read the [MongoDB Security Checklist](https://www.mongodb.com/docs/manual/administration/security-checklist/#security-checklist)

### Notes specific to the MongoDB 6 egg

**The [MongoDB 6 egg](./egg-mongo-d-b6.json) enables access control by default** in the `mongod.conf` file, meaning that even if people will be able to connect to your database as guests, [they will not be able to perform any operation, apart from nonhazardous commands](https://dba.stackexchange.com/a/292175)

### Disabling authentication

**If you know what you are doing** and want to explicitly disable access control, you can edit the following lines to your `mongod.conf` file:

```yaml
security:
  authorization: "disabled"
```

## Minimum RAM warning

MongoDB requires approximately 1GB of RAM per 100.000 assets. If the system has to start swapping memory to disk, this will have a severely negative impact on performance, and should be avoided.

## Server Ports

Ports required to run the server in a table format.

| Port    | default |
|---------|---------|
| Server  |  27017  |
