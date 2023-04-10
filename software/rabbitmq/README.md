# RabbitMQ

## From the [RabbitMQ](https://www.rabbitmq.com/) website

RabbitMQ is the most widely deployed open source message broker.

## Installation

Follow the common egg installation guide to install the egg on your Pterodactyl instance.
When setting up a server, the latest RabbitMQ version will be used by default.

With pretty new and old versions of RabbitMQ, you might have to adjust the used Erlang version.
This can be archived by adjusting the version number of the used image (e. g. `ghcr.io/pterodactyl/yolks:erlang_22` instead of `ghcr.io/parkervcp/yolks:erlang_24`).

The latest version as of now requires you to use atleast ghcr.io/pterodactyl/yolks:erlang_25

## Configuration

Configuring RabbitMQ in Pterodactyl is only possible using the config files.
This means:

- Configure the server itself as normal using `/home/container/etc/rabbitmq/rabbitmq.conf`
- Enable plugins using the plugin file located at `/home/container/etc/rabbitmq/enabled_plugins`
- Configure users and vhosts through a [definitions.json](https://www.rabbitmq.com/definitions.html)

You can set the path to the used `definitions.json` using the `load_definitions` option in your config.
Note that RabbitMQ versions prior to 3.8.6 will require a properly configured management plugin to do so!
The easiest way to get a working `definitions.json` is to setup a local instance with the management plugin. You can configure your instance there and load the definitions as stated by uploading them.

By default, only `listeners.tcp.default` is configured to match your primary allocation.
If you want to expose some other port (e. g. the web management interface) you have to manually configure the
port in your `rabbitmq.conf`.

## Update support

The egg _should_ keep the `etc` folder when reinstalling, to prevent destroying the configuration by accident. Therefore a reinstallation with "latest" as the selected version can be used to update RabbitMQ.

If you want to reset the server completly, remove the `etc` directory manually before reinstalling.

### Server Ports

Ports required to run the server in a table format.

| Port            | default |
| --------------- | ------- |
| RabbitMQ Broker | 5672    |
