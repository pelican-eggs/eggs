# Call of Duty 4X

## Game files mounting
The server does **not** contain the base game files, but they are necessary to use the server.

While the server itself is open-source, the game files are copyrighted and you will need to own a legitimate copy of the game (Call of Duty 4: Modern Warfare)
in order to provide the game files to the server.

More information here: https://github.com/callofduty4x/CoD4x_Server#setting-up-a-call-of-duty-4-server-with-cod4x-18

### Correctly mounting the game files
In order to give the server access to the needed game files you will need to create a new mount.

Let's say you copied the game files to your node into the directory `/home/pterodactyl/serverfiles/cod4x` (you can choose any directory you want of course).  
The directory structure will look like this: <details>
 
```
/home/pterodactyl/serverfiles/cod4x
├── main
│   ├── iw_00.iwd
│   ├── iw_01.iwd
│   ├── iw_02.iwd
│   ├── iw_03.iwd
│   ├── iw_04.iwd
│   ├── iw_05.iwd
│   ├── iw_06.iwd
│   ├── iw_07.iwd
│   ├── iw_08.iwd
│   ├── iw_09.iwd
│   ├── iw_10.iwd
│   ├── iw_11.iwd
│   ├── iw_12.iwd
│   ├── iw_13.iwd
│   ├── localized_english_iw00.iwd
│   ├── localized_english_iw01.iwd
│   ├── localized_english_iw02.iwd
│   ├── localized_english_iw03.iwd
│   ├── localized_english_iw04.iwd
│   ├── localized_english_iw05.iwd
│   └── localized_english_iw06.iwd
└── zone
    └── english
        ├── ac130.ff
        ├── aftermath.ff
        ├── airlift.ff
        ├── airplane.ff
        ├── ambush.ff
        ├── armada.ff
        ├── blackout.ff
        ├── bog_a.ff
        ├── bog_b.ff
        ├── cargoship.ff
        ├── code_post_gfx.ff
        ├── code_post_gfx_mp.ff
        ├── common.ff
        ├── common_mp.ff
        ├── coup.ff
        ├── hunted.ff
        ├── icbm.ff
        ├── jeepride.ff
        ├── killhouse.ff
        ├── launchfacility_a.ff
        ├── launchfacility_b.ff
        ├── localized_code_post_gfx_mp.ff
        ├── localized_common_mp.ff
        ├── mp_backlot.ff
        ├── mp_backlot_load.ff
        ├── mp_bloc.ff
        ├── mp_bloc_load.ff
        ├── mp_bog.ff
        ├── mp_bog_load.ff
        ├── mp_broadcast.ff
        ├── mp_broadcast_load.ff
        ├── mp_carentan.ff
        ├── mp_carentan_load.ff
        ├── mp_cargoship.ff
        ├── mp_cargoship_load.ff
        ├── mp_citystreets.ff
        ├── mp_citystreets_load.ff
        ├── mp_convoy.ff
        ├── mp_convoy_load.ff
        ├── mp_countdown.ff
        ├── mp_countdown_load.ff
        ├── mp_crash.ff
        ├── mp_crash_load.ff
        ├── mp_crash_snow.ff
        ├── mp_crash_snow_load.ff
        ├── mp_creek.ff
        ├── mp_creek_load.ff
        ├── mp_crossfire.ff
        ├── mp_crossfire_load.ff
        ├── mp_farm.ff
        ├── mp_farm_load.ff
        ├── mp_killhouse.ff
        ├── mp_killhouse_load.ff
        ├── mp_overgrown.ff
        ├── mp_overgrown_load.ff
        ├── mp_pipeline.ff
        ├── mp_pipeline_load.ff
        ├── mp_shipment.ff
        ├── mp_shipment_load.ff
        ├── mp_showdown.ff
        ├── mp_showdown_load.ff
        ├── mp_strike.ff
        ├── mp_strike_load.ff
        ├── mp_vacant.ff
        ├── mp_vacant_load.ff
        ├── scoutsniper.ff
        ├── simplecredits.ff
        ├── sniperescape.ff
        ├── ui.ff
        ├── ui_mp.ff
        ├── village_assault.ff
        └── village_defend.ff

3 directories, 93 files
```
</details>

First of all add the directory of the mount to the config.yml (in `/etc/pterodactyl`) of your node.
```
allowed_mounts:
  - /home/pterodactyl/serverfiles
```
After you've done this, restart wings with `systemctl restart wings`.

Now you simply create a mount in the Pterodactyl Panel with the following settings:
1. Set the source to `/home/pterodactyl/serverfiles/cod4x`
2. Set the target to any directory you want (but not something in `/home/container`, I suggest something like `/mnt/gamefiles/cod4`)
3. Set read-only to "true" ("false" will also work, but then you risk that one instance overwrites files for all other instances)
4. For the rest of the settings you can decide what works best for you
5. Create the mount
6. Add the correct node to the list of nodes for the mount
7. Add the CoD4X egg to the list of eggs for the mount

### Correctly configuring the servers
In order for the server to find the game files you have to set "Game file path" variable in the server to the same directory that you used in the "target" field of the mount.  
When you start the server for the first time it will prompt you to mount the game files under the configured path.
1. In the admin interface open your server
2. Go to the tab "Mounts"
3. Klick on the green "+" button on the correct mount in order to mount the game files
4. Restart the server


**Congratulations!** Your server should be able to find the game files and start.

## Default Server Ports
The default is 28960, but the server will automatically use the port defined in the allocation.

| Port    | default |
|---------|---------|
| Game    | 28960   |

#### Plugins may require ports to be added to the server.
