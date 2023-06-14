# Bastion

## From their [Github](https://github.com/TheBastionBot/Bastion)

Bastion is a multi-purpose Discord Bot that can help you automate most tasks in your server, from administration and moderation to keeping the members active through various incentives, games and other fun activities.


## Running the bot

You need to enable both `Privileged Gateway Intents` for the bot to run.

Invite link: `https://discord.com/oauth2/authorize?client_id=INSERT_APP_ID_HERE&scope=bot&permissions=8`

## Server Ports


|            Port       | default |
|-----------------------|---------|
|  Bastion API Port     | 8377    |

## Mongodb

Mongodb is automaticly running in the background. Leave Mongo URL to the default to use it. If you want to use a external mongodb server a connection string should look like: `mongodb+srv://<username>:<password>@<ip>/?retryWrites=true&w=majority`

## Startup cmd
By default this should be `npm start` but if you want to register your slash commands set it to `npm run commands` it will activate the slash commands on discord's side. Then the server will crash, change it back to `npm run` to start the bot back up and have slash commands enabled.