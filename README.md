# Album of the Week Bot
A bot to help pick an album of the week from amongst your friends

## Install Pre-requisites
Run the following code snippet to install NVM (Node Version Manager) and Node 12
```bash
bash install-prereqs.bash
```

## Getting your client token
### Create an Application
First you'll need to create an application in the Discord Developer Portal [here](https://discord.com/developers/applications).

### Create a bot
Once you've created your application, select "Bot" from the navigation pane and click "Create Bot".

### Accessing and using the Client Token
Once the bot is created, click "Copy" below the TOKEN section of the bot page, this will copy your
bots token to your clipboard. Once you have the token, it's best to set it as an environment variable
in your development environment and to *NEVER* save the token in this repository.

## Start the bot locally
### Setting the client token
Ensure that your client token is set as an evironment variable by running:
```bash
echo $DISCORD_TOKEN
```
this should return an alpha-numeric string and if it doesn't, either set the token in your `~/.bashrc`
or run `export DISCORD_TOKEN='mybigsecrettoken'`.

### Starting the app
To start the app, simply run `npm run start`


## Credits
The starter file is taken from the most excellent [Discord.js Guide](https://discordjs.guide/)
