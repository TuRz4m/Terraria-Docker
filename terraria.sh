#!/bin/bash

# we copy default plugin 
if [ ! "$(ls /tshock/ServerPlugins)" ]; then
	cp /tshock/DefaultServerPlugins/* /tshock/ServerPlugins
fi

mono --server --gc=sgen -O=all TerrariaServer.exe -port 7777 -autocreate "$TERRARIA_WORLD_SIZE" -world "/terraria/world/$TERRARIA_WORLD_NAME" -maxplayers $TERRARIA_PLAYERS_MAX -configpath /terraria/config/ -logpath /terraria/logs
