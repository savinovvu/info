# restart 3 times
docker run -d --name restart-3 --restart=on-failure:3 scrapbook/docker-restart-example

# restart always
docker run -d --name restart-always --restart=always scrapbook/docker-restart-example

##### [HOME](./../../../../../README.md)