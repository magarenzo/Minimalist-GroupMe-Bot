# Minimalist GroupMe Bot

Create a minimalist GroupMe bot

## Overview

`bot.sh` contains only 3 lines of code (you can easily decrease this number by piping commands together or increase this number to make the bot do more work; it all depends on what you want it to do):

1. Set a variable equal to the first line of a text file:

```shell
var=$(head -n1 ./facts.txt)
```

2. Remove the first line from a text file:

```shell
sed -i '1d' ./facts.txt
```

3. GroupMe's way to send an HTTP POST via curl:

```shell
curl -d '{"text" : "'"$var"'", "bot_id" : "secret_string"}' https://api.groupme.com/v3/bots/post
```

### Crontab

```
0 12 * * * ./groupMeBot.sh
```

## Dependencies

* [Crontab](http://crontab.org/)

* [curl](https://curl.haxx.se/)

## Resources

* I used Crontab for scheduling daily automation

* I created the bot and learned about the software's API using [GroupMe's bots tutorial](https://dev.groupme.com/tutorials/bots)

## TODO

Write what occurs to a log file

## Owner

[Michael Agarenzo](https://linkedin.com/in/magarenzo)

This was originally created to send a random bird fact daily to my old team's GroupMe chat
