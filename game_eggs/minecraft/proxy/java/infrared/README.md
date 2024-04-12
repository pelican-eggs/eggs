# Infrared server
Reverse Proxy for Minecraft servers.

## Reverse Proxy Configuration
Multiple egg are available to configure the reverse proxy.

 * The infrared-manual egg : Please refer to [Infrared Doc](https://infrared.dev/config/proxies) 
 * The infrared-x-server egg : You need to setup the variable defined in the egg (X_DOMAINS / X_ADDRESSES).

>If you want to extend the number of Proxy just duplicate the "Proxy #1 Domains / Addresses" variable and change their respective variable name / Environment variable name to an increment. And increment the PROXY_COUNT variable.

>For now it's the only way to extend the number of Proxy, like a custom egg.


| Port  | default |
|-------|---------|
| Game  | 25565   |