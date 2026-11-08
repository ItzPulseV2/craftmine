#!/bin/bash
cd /workspaces/craftmine || exit 1

echo "Stopping Minecraft servers..."

for port in 25567 65535 25565; do
    pid=$(fuser -n tcp "$port" 2>/dev/null)
    if [ -n "$pid" ]; then
        echo "Stopping process $pid on port $port"
        kill -TERM $pid
    fi
done

echo "Shutdown signals sent."
