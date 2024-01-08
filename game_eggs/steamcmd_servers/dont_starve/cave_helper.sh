#!/bin/bash

# Signal handler function
handle_signal() {
    echo "Signal received, executing c_shutdown()"
    c_shutdown
}

# Trap TERM and INT signals and call handle_signal when they are received
trap handle_signal TERM INT

# Start your server process here (run in the background if necessary)
./dontstarve_dedicated_server_nullrenderer_x64 -bind_ip 0.0.0.0 -port 11000 -persistent_storage_root /home/container/DoNotStarveTogether -conf_dir config -cluster server -players {{MAX_PLAYERS}} -shard Caves &

# Wait for server process to exit
wait $!

echo "Server process exited, script ending"
