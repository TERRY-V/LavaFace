echo 'Server is starting uwsgi service...'

ps aux | grep uwsgi | awk '{print $2}' | xargs sudo kill -9
sudo uwsgi -x conf/uwsgi.xml

echo 'Server is starting nginx service...'

sudo nginx -s stop
sudo nginx -p /data/niuxl/lavaFace -c conf/nginx.conf

echo 'Finished!'

