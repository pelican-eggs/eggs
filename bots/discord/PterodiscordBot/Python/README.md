# Pterodactyl Discord Bot Egg

This is a Pterodactyl Discord Bot egg based on the Python egg from parkervcp. It installs and configures a Discord bot on a Pterodactyl-hosted server.

## Credits
This egg is based on the [Python egg](https://github.com/parkervcp/eggs/tree/master/generic/python) by [parkervcp](https://github.com/parkervcp). Thanks to parkervcp for the original work and inspiration.

## Installation
1. Import the egg to your Pterodactyl Panel
2. Make a new server with this egg
3. Start the server and all of the dependencies will be install automatically
4. Configure the bot/config.json. Make sure you set the bot token and the guild ID to your bot and Discord Guild
5. Have fun managing your Pterodactyl Panel from your Discord server

## Instructions
- The settings file for the Discord bot should be configured according to the documentation of your specific bot.
- Manually upload any other required files to the server unless otherwise specified in the settings file.

## Docker Images
This egg supports the following Python versions:
- Python 3.12
- Python 3.11
- Python 3.10
- Python 3.9
- Python 3.8
- Python 3.7
- Python 2.7

## Variables
- `PY_FILE`: The file that starts the Discord bot. Default value: `bot/start.py`.
- `PY_PACKAGES`: Additional Python packages to install. Use spaces to separate.
- `USER_UPLOAD`: Specify whether the user wants to manually upload all other files. Default value: `0`.

## Authors
- parkervcp - Original author of the Python egg.
- Poseidon281 - Customizations for this Discord bot egg.

