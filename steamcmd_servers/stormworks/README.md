### Stormworks: Build and Rescue 
Join a world where you design, create and pilot your own air sea rescue service. Release your inner hero as you battle fierce storms out at sea to rescue those in need.

### Configuration warning
Due to the way the Stormworks configuration file is formatted and the way Pterodactyl handles config file replacement this egg cannot be configured by Pterodactyl.  A config file is created in the container home directory (`/home/container/server_config.xml`) and must be manually updated for any changes, **INCLUDING THE PORT NUMBER**.  This egg will not work after installation and you **MUST** edit the `server_config.xml` file manually to use anything other than the default settings.

For more information about the configuration file issue see the [Github issue](https://github.com/parkervcp/eggs/issues/522#issuecomment-652514654).

### Server Ports
Stormworks requires 3 consecutive ports in order to run.  The default ports are shown below.  Using non-default ports is possible however they must remain consecutive.

| Port    | default |
|---------|---------|
| Game | 25564 |
| Game | 25565 |
| Game | 25566 |

### Console output
The Stormworks server will constantly output updates to the server console when run under Wine.  Natively this results in text that updates in place, however there is no way to disable or limit the frequency of this output.  A [feature request](http://mcro.org/issues/view_issue/21739) was filed with the developer in hopes of improving the Linux support however it was rejected without comment.  At this time there is no known solution.
