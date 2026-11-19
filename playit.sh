#!/bin/bash
chmod +x ./playit-agent ./playit-cli
pgrep -f playit-agent >/dev/null || (./playit-agent --socket-path=./playit.sock --secret-path=./playit.toml >/tmp/playit.log 2>&1 &)
sleep 1
./playit-cli --socket-path=./playit.sock

