#copy files:
```shell script
docker cp config.conf dataContainer:/config/
```

# copy files from another container - ubuntu to dataContainer
```shell script
docker run --volumes-from dataContainer ubuntu ls /config
```

# move data container to another machine
```shell script

docker export dataContainer > dataContainer.tar
docker import dataContainer.tar
```

# copy from container
```shell script
docker cp a60262356771:/opt/kafka/bin/kafka-streams-application-reset.sh /opt/kafka/bin/kafka-streams-application-reset.sh
docker cp a60262356771:/opt/kafka/bin/kafka-topics.sh /opt/kafka/bin/kafka-topics.sh
docker cp a60262356771:/opt/kafka/bin/kafka-run-class.sh /opt/kafka/bin/kafka-run-class.sh
```


##### [HOME](./../../../../../README.md)