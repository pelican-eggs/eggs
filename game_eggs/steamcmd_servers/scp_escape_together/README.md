# SCP: Escape Together

In the midst of a site-wide containment breach, you must team up with other Class-D personnel to escape the underground, isolated facility while evading the dangerous anomalies that have breached containment. 

## [Documentation](https://hosting.scpetgame.com/GettingStarted)

## Install notes

<!--Make a note if the user needs to get any keys or other items to run/use the server-->
The Configuration parser sometimes randomly fails, so then you will manually have to set the port, IP and all other variables in the serverconfig.json file.

## Installation/System Requirements
<!--Make changes to reflect the server minimum/recommended hardware specs-->
|  | Bare Minimum | Recommended |
|---------|---------|---------|
| Processor | *Any recent processor will work* | */* |
| RAM | *4 GiB* | *6 GiB* |
| Storage | *2 GiB* | *4 GiB* |
| Network | *Any reasonable speed* | */* |
| Game Ownership | *Not required* | */* |

## Server Ports

Ports required to run the server in a table format.

| Port    | default |
|---------|---------|
| Game    | 27015   |

### Notes

<!--Notes about the server ports.-->
27015 is the default port, but any port can be used.

## Console wrapper
This server use a C# console wrapper. Their official build uses dotnet 5 what is EOL, so I rebuild it with dotnet 7 (literally ran the workflow with dotnet 7 instead of 5).
The build is external so that is wy I have put it here as it now is "Unchangeable without a PR".
Without this, the console and config do not properly work.