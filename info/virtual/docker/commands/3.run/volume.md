# start with volume
docker run  -v /docker/redis-data:/backup ubuntu ls /backup

# map volume from other containers without acccess to persisted
docker run --volumes-from r1 -it ubuntu ls /data

# volume with read-only access: ro param
docker run --volumes-from r1 -it ubuntu ls /data


##### [HOME](./../../../../../README.md)