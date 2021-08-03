docker logs redis-server

# start with syslog driver
docker run -d --name redis-syslog --log-driver=syslog redis

# start without logs
docker run -d --name redis-syslog --log-driver=syslog redis




##### [HOME](./../../../../../README.md)