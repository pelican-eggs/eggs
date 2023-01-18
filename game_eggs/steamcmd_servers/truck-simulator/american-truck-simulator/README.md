# ATSPtero - A Egg For Setting Up ATS Dedicated Server


Ports below are the default ports that are associated with the ATS dedicated server. 

| Port     | default       |
|----------|---------------|
| Dedicated| 27015         |
| Query    | 27016          |


# Adding moderators

To add moderators to your server instance you have to edit(.local/shared/American Truck Simulator/server_config.sii) example seen below:

```
moderator_list: 3
moderator_list[0]: Steam64_ID
moderator_list[1]: Steam64_ID
moderator_list[2]: Steam64_ID
```
^^^ Steam64_ID can be found by googling Steam ID Lookup

# Enjoy your server
Once those files have been uploaded and configured you are free to start up your server.  When the sever is started look for the line: Session search id: 00000000000000000/101  The number before the / is your search term.  This is number to search for in the convoy screen to find your server.  You can **NOT** search by the server name at this time.  Example: if your number before the / is 987654321 then you would search for 987654321 on your convoy screen in game.

# Steam Server Token
 --**A steam server Token is required**--

Adding a server token received from registering your server at https://steamcommunity.com/dev/managegameservers be sure to use the correct App ID or your server will crash upon startup.

American Truck Sim = 270880

# Disclaimer
I do not claim to know everything about this setup as I just got it reliably working myself and will update the egg if anything changes.  That being said, if you have problems open up an issue and I will do my best to help if when I have the time.  

