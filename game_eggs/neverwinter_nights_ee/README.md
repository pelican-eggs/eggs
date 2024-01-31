# Neverwinter Nights: Enhanced Edition

Return to the Forgotten Realms in this bestselling Dungeons & Dragons roleplaying game. Combines all the content of Neverwinter Nights Diamond Edition with all-new enhanced features. Includes 100+ hours of award-winning adventures and the tools to create your own!

Be mindful that this is a very old 32-bit application. Documentation and support is limited.

> [!IMPORTANT]
> Due to a bug in the current Pterodactyl Wings daemon ([git issue here](https://github.com/pterodactyl/panel/issues/3830)) your Wings daemon **must** be configured to use UID `1000`` when running this server. If not, then the server will crash upon opening. TLDR; The game expects the current user to exist as it uses it to build working directory paths, and by default the user created for the container has a UID of 1000.

### Server Ports

| Port | default |
| ---- | ------- |
| Game | 5121 |
| Script Debugger | 5122 |

## Content and Modules

This is a barebones server that does not include any content. All content must be self supplied. You can retrieve the official modules by purchasing the game and copying the data to your server. You may also consume player-made modules from various community websites, most popular of which is the [Neverwinter Vault](https://neverwintervault.org/project/nwnee/module/land-thuul).

### Installing official data

Official data can be transferred and used on the server, but you must own a copy of the game to get the data.

1. Browse to your local installation of the game.
2. Archive the `data/` directory.
3. In Pterodactyl, navigate to the server view and into the `Files` tab.
4. Upload the new `data.zip` archive to the server.
5. Unarchive the `data.zip` archive into the `data/` directory.

Official modules will be found at: `data/mod/`

### Installing custom modules

Custom modules are modules made my other players and distributed for consumption. They come in all shapes and sizes, and can be found readily on the internet. The most popular community for this is the [Neverwinter Vault](https://neverwintervault.org/project/nwnee/module/land-thuul).

Assuming you are using the [Neverwinter Vault](https://neverwintervault.org/project/nwnee/module/land-thuul), find the module you want to download. Download the corresponding files and upload them to the appropriate directories on your server. All custom modules (and custom data in general) live in the `user` directory.

The table below shows the different file types that you could potentially find in a custom module and in which directory they need to be placed. Some modules may deviate and require that some files be place into the `override` folder. Be sure to read the description of the modules and any README files to ensure these are place appropriately.

| File type | Folder | Purpose |
| --- | --- | --- |
| `.mod` | `user/modules` | Module master file |
| `.hak` | `user/hak` | Extra game resources |
| `.tlk` | `user/tlk` | Talk-tables (descriptions, names, etc.) |
| `.bic` | `user/localvault` | Character files |
| `.wav` / `.bmu` | `user/music` | Music files |
