# Minimalist GroupMe Bot

Create a minimalist GroupMe bot

## About

[<i>bot.sh</i>](src/bot.sh) contains only 3 lines of code (you can easily decrease this number by piping commands together or increase this number to make the bot do more work; it all depends on what you want it to do):

* `var=$(head -n1 ./facts.txt)` sets a variable equal to the first line of a text file.

* `sed -i '1d' ./facts.txt` removes the first line from a text file.

* `curl -d '{"text" : "'"$var"'", "bot_id" : "secret_string"}' https://api.groupme.com/v3/bots/post` is GroupMe's way to send an HTTP POST using [curl](https://curl.haxx.se/).

I use [Crontab](http://crontab.org/) for scheduling daily automation

I created the bot and learned about the software's API using [GroupMe's bots tutorial](https://dev.groupme.com/tutorials/bots).

## Crontab

`0 12 * * * ./groupMeBot.sh`

## TODO

Write what occurs to a log file

## Dependency

[`curl`](https://curl.haxx.se/)

## Owner

Michael A. Agarenzo

This was created to send a random bird fact daily to my team's GroupMe chat.

[&#127867; Buy me a cider, or three!](https://www.buymeacoffee.com/magarenzo)
