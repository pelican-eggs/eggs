#!/bin/ash
# Start Cassandra
echo "Starting Cassandra..."
./bin/cassandra -R -p cassandra.pid
# Wait for successful startup
while ! ./bin/cqlsh -u "$CASSANDRA_USER" -p "$CASSANDRA_PASSWORD" -e 'describe cluster' 127.0.0.1 $SERVER_PORT; do
    echo "Still awaiting Cassandra startup..."
 	sleep 10;
    if ! kill -0 $(cat cassandra.pid); then
    	echo "It seems Cassandra has crashed!"
        exit 1
    fi
done
# Connect with CQLSH
echo "Launching CQLSH..."
if [ "$CASSANDRA_PASSWORD" = 'cassandra' ]; then
    echo ""
    echo ""
    echo ""
    echo "IMPORTANT:"
    echo "YOUR CASSANDRA PASSWORD SEEMS TO BE THE DEFAULT ONE, PLEASE CHANGE IT!"
    echo ""
    echo ""
    echo ""
fi
./bin/cqlsh -u "$CASSANDRA_USER" -p "$CASSANDRA_PASSWORD" -t 127.0.0.1 $SERVER_PORT
# Stop server when CQLSH is stopped
echo "Stopping Cassandra gracefully..."
cassandraPid=$(cat cassandra.pid)
kill $cassandraPid
while kill -0 $cassandraPid; do
    echo "Still waiting for Cassandra to exit..."
 	sleep 5;
done
echo "Cassandra exited gracefully!"
