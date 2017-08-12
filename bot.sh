TODO: write what occurs to a log file

var=$(head -n1 ./facts.txt)

sed -i '1d' ./facts.txt

curl -d '{"text" : "'"$var"'", "bot_id" : "secret_string"}' https://api.groupme.com/v3/bots/post
