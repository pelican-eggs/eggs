Discord bot that plays Spotify tracks and YouTube videos or any URL including Soundcloud links and Twitch streams.

Play and search Spotify tracks and YouTube videos or playlists or play any URL including Soundcloud links and Twitch streams
Create cross-platform playlists with tracks from any source
Simple and customisable player commands
Create custom command presets as shortcuts for your most used commands
Adjustable properties for even deeper customisation
Sign in to Spotify to play your own playlists or upload botify playlists
Manage what roles can access which commands
Customise how you want to summon your bot by using a custom prefix or giving your bot a name
Advanced admin commands such as updating and rebooting the bot or cleaning up the database available to bot administrators
Capable scripting sandbox that enables running and storing custom groovy scripts and modifying command behavior through interceptors

You need a PG database.
After the first install if you try to run the server it will probably crash, if that is the case, please reinstall it and try again.

1. Create a Discord app
1.1 Go to https://discordapp.com/developers/applications and create an application
1.2 Click "Bot" on the side menu to create a bot and copy the token for later
2. Create a Spotify app
2.1 Go to https://developer.spotify.com/dashboard/applications to create a Spotify application and copy the client id
2.2 Click on "Edit Settings" and whitelist your Redirect URI for the Spotify login
Don't have a domain? You could either go without logins all together and still use most of botify's features or use your router's public ip and setup port forwarding for your router.

3. Create a YouTube Data API project
3.1 Go to https://console.developers.google.com/ and create a project for the YouTube Data API and create and copy the credentials
