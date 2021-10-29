export TOP2:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))


.PHONY: 2-up
2-up: SHELL:=/bin/bash
2-up:
	docker-compose -f ./2.nginx-php-fm/docker-compose.yml up --build


.PHONY: 2-terminal
2-terminal: SHELL:=/bin/bash
2-terminal:
	docker exec -it bash2container bash
