# Owncast

## From the [Owncast](https://owncast.online) website

Owncast is a self-hosted live video and web chat server for use with existing popular broadcasting software.

## Installation

Follow the common egg installation guide to install the egg on your Pterodactyl instance.
When setting up a server, the version set in the varaible will be used, default is 0.0.11.

## Configuration

Configuring Owncast in Pterodactyl can be done by using the command line switches:
* -backupdir string
	* Directory where backups will be written to
* -database string
	* Path to the database file.
* -enableDebugFeatures
	* Enable additional debugging options.
* -enableVerboseLogging
	* Enable additional logging.
* -logdir string
	* Directory where logs will be written to
* -restoreDatabase string
	* Restore an Owncast database backup
* -rtmpport int
	* Set listen port for the RTMP server
* -streamkey string
	* Set your stream key/admin password
* -webserverip string
	* Force web server to listen on this IP address
* -webserverport string
	* Force the web server to listen on a specific port



## Update support

The egg _should_ keep the `data` folder when reinstalling, to prevent destroying the configuration by accident.

If you want to reset the server completly, remove the `data` directory manually before reinstalling.

### Server Ports

Ports required to run the server in a table format.

| Port            | default |
| --------------- | ------- |
| Webserver 	  | 8090    |
| RTMP 			  | 8091 	|
