# Arma 3 Headless Client
### From their [Site](https://community.bistudio.com/wiki/Arma_3_Headless_Client)
What is a Headless Client (HC) used for?
* Headless Client is used to offload AI calculations from the server
* Headless Client is integrated into game client and dedicated server executable (WIndows and Linux, use -client parameter)
* The server doesn't allow arbitrary connections from headless clients if you do not define the headless clients IPs in the server.cfg,

### But why?
If you host an Arma 3 Server with lots of AI in it, the Server FPS will drop fast.
Since the server files are only 32 Bit you will need some kind of magical assistant to prevent slow AI.

### Minimum RAM warning
This server requires about 2048m to run properly. ARMA 3 is more CPU intensive though.

### Additional settings
Additional server flags can be found [here](https://community.bistudio.com/wiki/Arma_3_Startup_Parameters).  
This can help is you see the server using to many cores/threads on the server.
If you want to know how to implement, take a look at the Wiki [here](https://community.bistudio.com/wiki/Arma_3_Headless_Client#Spawning_the_AI) or at a guide in the A3 Forums [here](https://forums.bohemia.net/forums/topic/178434-arma3-headless-client-guide/).

### Server Ports
Since this is basically a client, this Egg does not need a port. 