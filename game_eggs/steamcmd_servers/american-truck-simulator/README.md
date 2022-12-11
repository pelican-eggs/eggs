# ATSPtero - A Egg For Setting Up ATS Dedicated Server


Ports below are the default ports that are associated with the ATS dedicated server.  If you change them in server setup be sure to change them in the .local/shared/American Truck Simulator/server_config.sii file. (See Server_Config Directions below)
| Port    | default       |
|---------|---------------|
| Dedicated| 27015 |
| Query    | 27016   |

# Setup
You must generate the required server config files necessary to run the server in game on ATS.  To do so you **MUST** have console enabled.  

# Enabling Console
To enable your console you must change 2 values in the clients config.cfg file.  With the game off simply change the following:
- g_developer "0" -----> g_developer "1"
- g_console "0" -----> g_console "1"

Once those have been changed save and close the file and start up ATS.

# Generating Config Files
Once you have enabled your console and started ATS, go ahead and log in to game and set up the convoy how you would normally set it up.  This includes, any mods that you may have.  Also, dont worry about setting up the name, password, description, etc, as the server_config.sii generated will ignore these settings.  

Once you have your convoy set up in game, press the ~ key and a console will open on the bottom center of your screen.  If a console does not open, close ATS and go back up to **Enabling Console** section and go through those steps again. 

With the console open type ```export_server_packages``` and press enter.  The game will then tell you that the export was successful.  

Navigate to the folder that contains your clients config.cfg file that you changed in the **Enabling Console** section and look for the following:

- server_packages.sii
- server_packages.dat


# Copy to Server

With your newly set up files its time to copy them over to the Pterodactyl Panel.  Simply upload them through either your preferred SCP program or the file browser in the server panel to the .local/shared/American Truck Simulator/ folder.

On the panel select start server and the server will then start up and create a default server_config.sii file.  Proceed to the .local/shared/American Truck Simulator/ folder.

Edit the server_config.sii using your favorite text editor and set it up as you need, making any changes to name, password etc.  This is also where you would change your default ports if needed to suit your Pterodactyl settings.  It should look something like this when you are finished:

```
SiiNunit
{
server_config : *randomly generated string* {
 lobby_name: "American Truck Simulator Dedicated Server"
 description: ""
 welcome_message: ""
 password: 
 max_players: 8
 max_vehicles_total: 100
 max_ai_vehicles_player: 50
 max_ai_vehicles_player_spawn: 50
 connection_virtual_port: 100
 query_virtual_port: 101
 connection_dedicated_port: 27015
 query_dedicated_port: 27016
 server_logon_token: ""
 player_damage: true
 traffic: true
 hide_in_company: false
 hide_colliding: true
 force_speed_limiter: false
 mods_optioning: false
 service_no_collision: false
 in_menu_ghosting: false
 name_tags: true
 friends_only: false
 show_server: true
 moderator_list: 0
}

}

```

# Enjoy your server
Once those files have been uploaded and configured you are free to start up your server.  When the sever is started look for the line: Session search id: 00000000000000000/101  The number before the / is your search term.  This is number to search for in the convoy screen to find your server.  You can **NOT** search by the server name at this time.  Example: if your number before the / is 987654321 then you would search for 987654321 on your convoy screen in game.


# Disclaimer
I do not claim to know everything about this setup as I just got it reliably working myself and will update the egg if anything changes.  That being said, if you have problems open up an issue and I will do my best to help if when I have the time.  

