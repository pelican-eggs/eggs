# Neos VR headless client
## From https://neos.com
Developing Neos, short for neo spatium - new space, a highly collaborative virtual and augmented reality metaverse.

# Notice

To use this egg you will need a beta code and a steam account. The account will also need to have neos vr in its library. You can do this by running app_license_request 740250 in steamcmd if you have never installed neos on this account.
For more information related to configuration go here: https://wiki.neos.com/Headless_Client/Server

This game does not require any port forwarding, but instead uses UDP NAT hole punching (and/or relay) on a random port. You can force a certain port in the config for direct connections, but most communcation is done via NAT hole punch using LiteNetLib (LNL).