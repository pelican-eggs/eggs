# Apache Cassandra

### From the [Apache Cassandra](https://cassandra.apache.org/) website
Apache Cassandra is an open source NoSQL distributed database trusted by thousands of companies for scalability and high availability without compromising performance. 
Linear scalability and proven fault-tolerance on commodity hardware or cloud infrastructure make it the perfect platform for mission-critical data.

### Installation
Follow the common egg installation guide to install the egg on your Pterodactyl instance.
You have to specifiy the Cassandra version to install using the "Cassandra Version" variable.
By default, version 4.0.0 will be installed.

The version to install has to be available on the mirrors.ae-online.de mirror - which is one of the official mirrors.

You can choose between a Java 11/Python 3 (Cassandra >= 4.0.0) and Java 8/Python 2 (Cassandra < 4.0.0) image 

### Security

#### General usage
Allowing general users to use this egg is potentially dangerous as the user can modify the Cassandra startup script,
which is a simple shell script located in the mounted `/home/container` directory. Only trusted users
should have access to a Cassandra server hosted with this egg to prevent malicious use!

#### Authentication
The automated configuration of the egg won't allow disable authentication for Cassandra.

The default credentials are:
 - Username: cassandra
 - Password: cassandra

The first thing you should do after the first start is changing this password or creating an entirely new user
while removing the default one. Especially if your instance is exposed to the internet!
Don't forget to update the login credentials for the default user in the eggs variables after changing them
for the server to work properly!

**Not changing the password right after the first startup is a big security flaw!**

Example command you can enter into the Pterodactyl console after CQLSH is connected to change the password:
```
ALTER USER cassandra WITH PASSWORD 'SomePasswordYouShouldSpecifyOnYourOwn!';
```

#### Internet Access
Cassandra recommends to not expose the service to the internet. 
Therefore, it is recommended to run this egg in an internal network or behind a firewall, 
that is properly configured to restrict access to the service from outside of your network.
Note that Docker bypasses IPTables (and because of this also UFW) by default and needs additional configuration!

If you still want to expose the Cassandra service to the internet, configure Cassandra to use an encrypted connection!

### Update support
The egg _should_ keep the `conf` and `data` folder when reinstalling, to prevent destroying the configuration by accident. 

If you want to reset the server completly, remove the `conf` and `data` directory manually before reinstalling.

### Server Ports

Ports required to run the server in a table format.

| Port                          | default |
| ----------------------------- | ------- |
| Cassandra CQL Native Tansport | 9042    |
