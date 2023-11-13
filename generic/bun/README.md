# Bun - JavaScript & TypeScript Generic

## From their [site](https://bun.sh/)

This egg is designed to run any generic Bun application, allowing users to pull their own Bun source code from a Git repository.

There is an option to allow a user to upload their own files to run a server.

The startup configs and commands may need changing to actually function properly.

## Configuration

The server will be stuck as `starting` until the egg Start Configuration is modified. You have to edit the text to match something your bot will print for Pterodactyl panel to detect it as running.
![image](https://user-images.githubusercontent.com/10975908/126516861-c5cb4630-9f25-405c-8199-97bf5ec15a7f.png)

You can use arrays to have multiple different values when different bots are being used

```json
{
  "done":[
    "change this text 1",
    "change this text 2"
  ]
}
