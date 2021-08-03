#simple
docker build -t germes/mysql -f mysql.dockerfile

#without cache
docker build -t germes/mysql -f mysql.dockerfile --no-cache=true

# if file system: rootfolder/src/main/resources/docker/admin.dockerfile
# from rootfolder for src, .dockerignore move to rootfolder
docker build –f src/main/resources/docker/admin.dockerfile .


 
##### [HOME](./../../../../../README.md)