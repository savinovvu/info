### Stop all containers
```shell script
docker stop $(docker ps -q)
```

### Remove all containers
```shell script
docker rm -f $(docker ps -a -q)
```

### Remove all images
```shell script
docker rmi $(docker images -a -q)
```

### Remove unnamed images
```shell script
docker rmi $(docker images -f dangling=true -q)
```


##### [HOME](./../../../../../README.md)
