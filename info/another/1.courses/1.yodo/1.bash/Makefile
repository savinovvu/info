#!make
export TOP:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

include ./1.nginx-php-fm/Makefile
include ./2.nginx-php-fm-telegram/Makefile
include ./3.nginx-php-fm-backup/Makefile

