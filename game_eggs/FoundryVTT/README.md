# Foundry VTT
[Foundry VTT](https://foundryvtt.com/) is a standalone application built for experiencing multiplayer tabletop RPGs using a feature-rich and modern self-hosted application where your players connect directly through the browser.

# Installation
Foundry requires a license. In order to use this egg, you will need to purchase a foundry license, select the linux platform from your profile on the website, and then paste the "Timed URL" into the variable when seting up the server.

![image](https://user-images.githubusercontent.com/1012176/141174950-840fbf28-37d9-4244-8402-a72821458f41.png)

Note that this egg only runs the node application. You will need to manage TLS, reverse proxying, etc. on your own.

# Server Ports
This is a node application and only needs a single port that you will connect to over http(s)
