# Life is Feudal: Your Own
Life is Feudal is an open persistent virtual world, allowing players can roam around freely without restrictions.
Its terraforming abilities allow you to shape the terrain organized in a unique grid-pattern.
This means that players can not only raise, lower and flatten terrain, but also dig tunnels and underground caverns.
The game also includes a skill system, mini-games, loot, PvP, and crafting.

## SQL server
The Server needs an external SQL database. The MariaDB egg can be used perfectly for this.

### SQL server config
The SQL server should have the following configuration:
[mysqld]
innodb_file_per_table=ON
innodb_file_format=Barracuda
innodb_flush_log_at_trx_commit=1
max_sp_recursion_depth=255
max_allowed_packet=10M
query_cache_size=0
query_cache_type=OFF

### SQL server user
An user could be added with the following example SQL statement (don't create the database on your own):
CREATE USER 'lif_1'@'%';
GRANT ALL PRIVILEGES ON lif_1.* To 'lif_1'@'%' IDENTIFIED BY 's@fe!Passw0rd';
exit

**NOTE**
The first start could take up to 5 minutes.

## Minumum server settings
### RAM
This server requires at least 4GB of RAM.

### Disk
This server needs at least 4GB of diskspace.

## Server Ports

| Port  | default |
|-------|---------|
| Game  | any (+2 more ports e.g. 28000:28002)    |
| Telnet | any (local port not reachable from the outside)    |
