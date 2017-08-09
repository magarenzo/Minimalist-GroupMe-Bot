# bird-facts-groupme-bot

GroupMe bot that sends random facts about birds daily

---

`groupMeBot.sh` sets a variable equal to the output of a command which prints the first line of a text file. The script then removes that line from the text file so that it doesn't get used again. Finally, the script posts the message to the group that the bot exists in. [Crontab](http://crontab.org/) used for scheduling daily automation.

`crontab.txt` provides an example of how the automation can be set up.

---

Created the bot and learned about the software's API using GroupMe's [bots tutorial](https://dev.groupme.com/tutorials/bots).

---

Created as a second fun side project so that my team's GroupMe chat receives a random bird fact daily.
