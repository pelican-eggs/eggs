# Valheim BepInEx

## Author & Contributers
| Name        | Github Profile  | Buy me a Coffee |
| ------------- |-------------|-------------|
|   gOOvER   | https://github.com/gOOvER | [![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/B0B351D0Q) |

## Valheim

A brutal exploration and survival game for 1-10 players, set in a procedurally-generated purgatory inspired by viking culture. Battle, build, and conquer your way to a saga worthy of Odin’s patronage!
https://store.steampowered.com/app/892970/Valheim/

## BepInEx

BepInEx is a general purpose framework for Unity modding. BepInEx includes tools and libraries to
- load custom code (hereafter plugins) into the game on launch;
- patch in-game methods, classes and even entire assemblies without touching original game files;
- configure plugins and log game to desired outputs like console or file;
- manage plugin dependencies.

BepInEx is currently one of the most popular modding tools for Unity on GitHub.

This pack is preconfigured and usable for Valheim modding.
In particular, the changes from base BepInEx releases are:

- Added preconfigured BepInEx.cfg with console enabled.
- Added unstripped Unity + Mono BCL DLLs for current versions of the game. See this issue comment for more info.
- Updated Doorstop configuration and BepInEx to allow to load unstripped DLLs without having to overwrite game DLLs.
- Added scripts necessary to run both game and dedicated server on Linux machines

## Server Ports

| Port  | default |
|-------|---------|
| Game  | 2456    |
| Query | 2457    |
