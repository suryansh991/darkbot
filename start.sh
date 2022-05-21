if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Probotmaker8/stella-bot/stella-bot.git /stella-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /stella-bot
fi
cd /stella-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
