# Don't Starve Together

## Reason for a Separate Egg

Vanilla egg works fine when no mod added, while some mods are added to the server, "coproc" command will not start the server correctly. Thus this egg uses Supervisord to properly manage the process.

## Warning for Stopping Servers

Due to a design limitation of the game, it cannot exit gracefully using standard Linux signals.

For a graceful shutdown, please follow these steps:
1. Use the 'fg caves' and 'fg master' commands to access each shard's process within supervisorctl.
2. Manually type 'c_shutdown()' in each process to initiate a graceful shutdown.

After completing the manual shutdown, you can safely click the 'stop' button or type 'exit' in supervisorctl.

**Note: If you don't do so, the last unsaved day in game will be lost.**