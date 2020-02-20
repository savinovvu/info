CREATE DATABASE germes;

CREATE USER ‘germes’@’%’ identified by ‘germes’;

# set all privilege
GRANT ALL ON germes.* TO 'germes'@'%' IDENTIFIED BY ‘germes’; FLUSH PRIVILEGES;

#show databases
SHOW DATABASES;