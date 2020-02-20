CREATE DATABASE germes;

CREATE USER ‘germes’@’%’ identified by ‘germes’;

#all privileges
GRANT ALL ON germes.* TO 'germes'@'%' IDENTIFIED BY ‘germes’; FLUSH PRIVILEGES;