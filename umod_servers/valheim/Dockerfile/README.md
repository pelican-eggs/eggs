# Help me
I need help to make automatic updates in the game, I tried to use umod to update the game, however, this error happens: 
```Read-only file system (System.IO.FileSystem)n /builds/umod/tools/agent/src/uMod.Agent/Commands/Install.cs:line 436```
```at System.IO.FileSystem.CreateDirectory(String fullPath)ools/agent/src/uMod.Agent/Commands/Update.cs:line 157```

I tried using SteamCmd, but this error happens: ``/home/container/steamcmd/linux32/steamcmd: No such file or directory``

I also need help removing this from the Output: ``/^\(Filename:.*Line:[[:space:]]+[[:digit:]]+\)$/d; /^([[:space:]]+)?$/d``

Everyone who helps will be considered a contributor, and I will be very grateful for their help.

# Dockerfile
I am using a self-made Dockerfile to make the server run lighter and also to make automatic updates to the Core.

# Entrypoint.sh
The entrypoint.sh is how the Daemon will run the server that is being run here, it is in this file that I start and update the server.

## DockerHub Repository
Link: https://hub.docker.com/r/castblacking/umod-valheim