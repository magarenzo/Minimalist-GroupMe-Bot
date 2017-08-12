# simple-shell-groupme-bot

Create a simple GroupMe bot using Shell

---

<i>groupMeBot.sh</i> is a Shell script containing only 3 lines of code:

`var=$(head -n1 ./facts.txt)` sets a variable equal to the first line of a text file.

`sed -i '1d' ./facts.txt` removes the first line from a text file.

`curl -d '{"text" : "'"$var"'", "bot_id" : "secret_string"}' https://api.groupme.com/v3/bots/post` is GroupMe's way to send an HTTP POST using [cURL](https://curl.haxx.se/).

I use [Crontab](http://crontab.org/) for scheduling daily automation. <i>crontab.txt</i> provides an example of how this automation can be set up.

I created the bot and learned about the software's API using GroupMe's [bots tutorial](https://dev.groupme.com/tutorials/bots).

---

This script was created to send a random bird fact daily to my team's GroupMe chat.
