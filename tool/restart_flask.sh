killall python3.7
export FLASK_APP=app.py
# export FLASK_ENV=development
cd /home/www/leliapp.com
nohup python3.7 -m flask run 2>&1 >> /home/www/leliapp.com/access.log &
