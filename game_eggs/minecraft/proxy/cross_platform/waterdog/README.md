# Waterdog server

Waterdog provides native support for the Minecraft Bedrock protocols along with the existing java protocols. It is capable of using the ProtocolSupport PE encapsulation protocol over TCP, or it can use the native RakNet Bedrock protocol for traditional downstream Bedrock servers such as Nukkit, Pocketmine, Bedrock Alpha Server, MiNET, and others.

## Server Ports

The minecraft server requires a single port for access (default 25565) but plugins may require extra ports to enabled for the server.

| Port     | default |
|----------|---------|
| Java     | 25565   |
| Bedrock  | 19132   |
