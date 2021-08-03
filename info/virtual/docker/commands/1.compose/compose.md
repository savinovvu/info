##### Run and cli with open ports
```shell script
docker-compose run --service-ports web /bin/bash
```
##### cli with already running container
```shell script
docker-compose exec service-name sh
docker-compose exec service-name bash
```


##### cli without open ports
```shell script
docker-compose run app /bin/bash
docker-compose run app bash
```

##### check settings
```shell script
docker-compose config
```

##### stop docker compose
```shell script
docker-compose down
```

##### background
```shell script
docker-compose up -d
```

##### logs from all containers
```shell script
docker-compose logs
```

##### restart container
```shell script
docker-compose restart container-name
```



##### [HOME](./../../../../../README.md)