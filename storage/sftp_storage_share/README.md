# SFTP Storage Share

### Authors / Contributors

<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
    <tr>
        <td align="center">
            <a href="https://github.com/lilkingjr1">
                <img src="https://avatars.githubusercontent.com/u/4533989" width="50px;" alt=""/><br /><sub><b>Red-Thirten</b></sub>
            </a>
            <br />
            <a href="https://github.com/parkervcp/eggs/commits?author=lilkingjr1" title="Codes">💻</a>
            <a href="https://github.com/parkervcp/eggs/commits?author=lilkingjr1" title="Maintains">🔨</a>
        </td>
    </tr>
</table>
<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->

___

### Description

A simple "empty" egg that acts as a private SFTP storage share by utilizing Pterodactyl's built in SFTP system for servers. Sub-users can be added to the server by the owner to allow additional people to access the share. "Starting" the server performs no actions and it should be left off.

You can access the SFTP server using your favorite SFTP client and the SFTP login information found under the "Settings" tab of the server.

___

### Server Ports

Pterodactyl may force you to assign a port to the server but it will not be used and can be any port. The only port that will be used will be the SFTP port assigned to the node the server is running on.

___

### Known Issues

- Pterodactyl currently does not enforce server storage size when the server is not running. Therefore, because this "server" does not run, the Disk Space setting when creating the server will not be enforced and caution should be used when deploying this solution to un-trusted end-users.
