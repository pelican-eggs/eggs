# Arma 3 Headless Client
### From their [Site](https://community.bistudio.com/wiki/Arma_3_Headless_Client)
What is a Headless Client (HC) used for?
* Headless Client is used to offload AI calculations from the server [to improve the main server's performance].
* Headless Client is integrated into dedicated server executable, and uses the `-client` parameter to activate.
* The server doesn't allow arbitrary connections from headless clients if you do not define the headless clients' IPs in the `server.cfg`.

### But why?
If you host an Arma 3 Server with lots of AI in it, the Server FPS will drop fast. The headless client helps alleviate the AI's stress on the server.

### Installation Requirements
- A valid, real Steam account, with Steam Guard turned off, is required to install the client (default "anonymous" login cannot be used). For security reasons it is recommended that you create a new Steam account just for your dedicated servers. This account *does not* need to own Arma 3.
- The Arma 3 server this client is connecting to **must** be running a properly written mission file that accepts and utilizes headless clients. If you want to know how to implement, take a look at the Wiki [here](https://community.bistudio.com/wiki/Arma_3_Headless_Client#Spawning_the_AI) or at a guide in the A3 Forums [here](https://forums.bohemia.net/forums/topic/178434-arma3-headless-client-guide/).
- For automatic Steam Workshop mod downloading to work, the Steam account *does* need to own Arma 3. This is, of course, optional functionality, and mods can be manually uploaded to the client if desired.

### Minimum RAM Warning
This client requires about 2048 MB to run properly.

### Additional Settings
Additional client flags can be found [here](https://community.bistudio.com/wiki/Arma_3_Startup_Parameters).  
These can help you fine tune how the client will behave during runtime.

*Note: The `-maxMem=` flag is currently known to cause an unknown segmentaion fault crash on startup. Other hardware related flags may cause similar behavior.*

### Server Ports
Since this is basically a client, this Egg does not need a port.
Therefore, the port assigned to this Egg goes unused.
