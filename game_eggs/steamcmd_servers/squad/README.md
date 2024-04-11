# Squad-egg-pterodactyl
Overview
The Squad-egg-pterodactyl project provides the necessary configurations to deploy and manage a Squad game server on the Pterodactyl platform using Windows compatibility layers provided by Wine. This setup is particularly useful for supporting mods and ensuring that the Squad server operates seamlessly in a Windows-emulated environment on Linux servers.
---
## Features
Wine Integration: Runs Squad servers through Wine, allowing you to leverage Windows-based server executables on Linux platforms.
Mod Support: Full support for downloading and configuring mods directly through the Pterodactyl panel.
Automated Scripts: Includes scripts for easy setup and management of the game server, including installations and updates.
Installation
To install the Squad game server egg on your Pterodactyl panel, follow these steps:
---
## Download the latest release from this repository.
Log into your Pterodactyl panel.
Navigate to the Nests section under the Admin Panel.
Import the JSON file for the nest and egg through the Import Egg feature.
Configure the variables and paths according to your server setup.
For detailed installation instructions, refer to the included installation.md file in this repository.
---
# Credits
## Created by: Fakhry and Rectofen
## Support from: Ghoti and Cartitarul
These individuals have contributed to the development of this project either by direct code contributions, testing, or providing insights and documentation help.
Squad requires 5 ports

| Port     | default |
|----------|---------|
| Game     | 7787    |
| game +1  | 7788    |
| Query    | 27165   |
| Query +1 | 27166   |
| Beacon   | 15000   |
