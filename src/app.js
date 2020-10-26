const CronJob = require('cron').CronJob;
const Discord = require('discord.js');

const client = new Discord.Client();
const channelId = '687767191503896655'

const users = [
  '178628625208311809',
  '332053419588190218',
  '337422326759030794',
  '405158350805008385',
  '457276447501975565',
  '492417918181703681',
  '492490676962066432',
  '502170892605063179',
  '575141018027032599',
  '663219490565390372',
  '689527478099640358',
  '689634529044070476'
]

client.once('ready', () => {
  console.log('Ready!');
});

client.on('message', message => {
  // const members = message.channel.guild.members.cache
  // members.forEach(member => console.log(`${member.user.username}: ${member.user.id}`))
  // console.dir()
  if (message.content === '!aotw') {
    message.channel.send('aotw is active.');
  }
});

client.login(process.env.CLIENT_TOKEN);

const job = new CronJob('0 0 9 * * 1', () => {
  const winner = Math.floor (Math.random () * users.length)
  client.channels.cache.get(channelId).send(`<@${users[winner]}>: The album of the week is yours to choose!`)
}, null, true, 'America/Chicago');
job.start();