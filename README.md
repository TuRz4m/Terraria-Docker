# Terraria with TShock - Docker

Docker build for managing a Terraria server with Tshock.

Version TShock 4.3.9 for Terraria 1.3.0.8 ([github](https://github.com/NyxStudios/TShock))

## Usage
Fast & Easy server setup :   
`docker run -d -p 7777:7777 -v {PathToTerrariaFolder}:/terraria --name terraria -e TERRARIA_WORLD_SIZE=3 -e TERRARIA_WORLD_NAME="myservername"  turzam/terraria`

You can map the plugins directory to add your plugins with `-v {PathToPluginDirectory}:/tshock/ServerPlugins `

Edit your config files in `{PathToTerrariaFolder}/config`  
See your log files in `{PathToTerrariaFolder}/logs`  
Backup your world from `{PathToTerrariaFolder}/world`  
Add dll plugins in `{PathToPluginDirectory}`  

You can map the REST port with `-p 7878:7878` after changing `"RestApiEnabled": false,` in `{PathToTerrariaFolder}/config/config.json`

---

## Recommended Usage
- First run  
 `docker run -it -p 7777:7777 -p 7878:7878 -v {PathToPluginDirectory}:/tshock/ServerPlugins -v {PathToTerrariaFolder}:/terraria --name terraria -e TERRARIA_WORLD_SIZE=3 -e TERRARIA_WORLD_NAME="myservername"  turzam/terraria`
- Wait for terraria to init & launch, note your auth code and tape exit to quit.
- Modify your config files in `{PathToTerrariaFolder}/config/`
- Add dll plugins in {PathToPluginDirectory}.
- `docker start terraria`
- Enjoy !

** You can activate REST api in your config file and add your server on http://www.tserverweb.com/ to manage it. **

--- 

## Variables
+ __TERRARIA_WORLD_NAME__
Name of server (default: terraria)
+ __TERRARIA_WORLD_SIZE__
Size of your map (1: small, 2: normal, 3: big) (default: 3)

--- 

## Volumes
+ __/terraria__ : Server data directory :
    + /terraria/world : Server files and data.
    + /terraria/logs : logs
    + /terraria/config : config files
+ __/tshock/ServerPlugins__ : Plugin directory.

--- 

## Expose
+ Port : 7777 : Server port 
+ Port : 7878 : REST api port 


---

## Known issues

