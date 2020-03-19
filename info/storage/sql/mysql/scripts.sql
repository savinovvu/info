CREATE DATABASE germes;

CREATE USER ‘germes’@’%’ identified by ‘germes’;

# set all privilege
GRANT ALL ON germes.* TO 'germes'@'%' IDENTIFIED BY ‘germes’; FLUSH PRIVILEGES;

#show databases
SHOW DATABASES;

USE database_name

SHOW tables;

#info about tables
desc TABLES;

# see ddl definition
show create table;
