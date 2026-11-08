#!/bin/bash
cd /workspaces/craftmine || exit 1

screen -dmS paper bash -c 'cd server && exec java -jar paper.jar nogui'
screen -dmS limbo bash -c 'cd limbo && exec java -jar paper.jar nogui'
screen -dmS velocity bash -c 'cd velocity && exec java -jar velocity.jar nogui'

echo "Starting Paper, Limbo and Velocity..."
echo "Use screen -ls to see the consoles."
