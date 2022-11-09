# League Sandbox

## From their [Github](https://github.com/LeagueSandbox/GameServer)

[![Build status](https://ci.appveyor.com/api/projects/status/7olahkndcs3r295p/branch/indev?svg=true)](https://ci.appveyor.com/project/MythicManiac/gameserver/branch/indev)
[![Build Status](https://travis-ci.org/LeagueSandbox/GameServer.svg?branch=indev)](https://travis-ci.org/LeagueSandbox/GameServer)

Project website along with more specifications can be found from: <https://leaguesandbox.github.io/>

Project chat on Discord: <https://discord.gg/Bz3znAM>

## Install notes

Post install you are required to set

- `/home/container/Settings/GameInfo.json` `CONTENT_PATH` to just `Content`
- `/home/container/Settings/GameServerSettings.json` `autoStartClient` to `false`

## Server Ports

Ports required to run the server in a table format.

| Port | default |
| ---- | ------- |
| Game | 5119    |
