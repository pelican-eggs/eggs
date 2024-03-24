# SuperTuxKart

SuperTuxKart is a 3D open-source arcade racer with a variety characters, tracks, and modes to play.

## Files downloaded from their [Github](https://github.com/supertuxkart/stk-code) and [SourceForge](https://svn.code.sf.net/p/supertuxkart/code/stk-assets)

To compile the executable as outlined in their [building instruction](https://github.com/supertuxkart/stk-code/blob/master/INSTALL.md) and [source control documentation](https://supertuxkart.net/Source_control) files from both of these sources is required to be downloaded.

## [Documentation](https://github.com/supertuxkart/stk-code/blob/master/NETWORKING.md)

Essentially this is a standard build of the regular SuperTuxKart client but with a special flag when being compiled that produces a GUI-less binary optimized for size and memory usage.

## Install notes

First install will take a while because the games source code and assets will be downloaded and the games executable will have to be compiled.

## Installation/System Requirements
|  | Bare Minimum | Recommended |
|---------|---------|---------|
| RAM | 1GiB | 1GiB |
| Storage | 3GiB | 5GiB |

## Server Ports

| Port    | default |
|---------|---------|
| Game    | 2759   |

### Notes

To change server settings, stop the server then edit the 'config.xml' file in the root of the container. When done save the file and start the server.

2759 is the default port, but any port can be used. You will have to manually change it in the config.xml file.

To update the server (only should have to be done when the games code or assets are updated) in panel go to Servers > SuperTuxKart Server > Manage > Reinstall. This will download the updated code/assets (should exclude anything that didn't change) and recompile the executable.

Currently this is setup to run a local lan server. To make this a wan server (available in the SuperTuxKart online lobby list) read the document at this link and make the necessary changes to the [startup command](https://github.com/supertuxkart/stk-code/blob/master/NETWORKING.md).
