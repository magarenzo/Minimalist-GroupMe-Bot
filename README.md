# minimalist-groupme-bot

Create a minimalist GroupMe bot

---

<i>groupMeBot.sh</i> contains only 3 lines of code (you can easily decrease this number by piping commands together or increase this number to make the bot do more work; it all depends on what you want it to do):

* `var=$(head -n1 ./facts.txt)` sets a variable equal to the first line of a text file.

* `sed -i '1d' ./facts.txt` removes the first line from a text file.

* `curl -d '{"text" : "'"$var"'", "bot_id" : "secret_string"}' https://api.groupme.com/v3/bots/post` is GroupMe's way to send an HTTP POST using [curl](https://curl.haxx.se/).

I use [Crontab](http://crontab.org/) for scheduling daily automation. [Click here](https://github.com/magarenzo/minimalist-groupme-bot/blob/master/README.md#crontab) for an example.

I created the bot and learned about the software's API using GroupMe's [bots tutorial](https://dev.groupme.com/tutorials/bots).

---

<h3>Necessary Installations:</h3>

[`curl`](https://curl.haxx.se/)

---

<h3>Crontab:</h3>

`0 12 * * * ./groupMeBot.sh`

---

<h3>To Do:</h3>

* Write what occurs to a log file

---

*bot.sh* was created to send a random bird fact daily to my team's GroupMe chat.
