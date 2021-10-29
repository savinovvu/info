.PHONY: up
up: SHELL:=/bin/bash
up:
	docker run --name sys-test2 --rm --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro --net=host 2-ubuntu-systemd


.PHONY: terminal
terminal: SHELL:=/bin/bash
terminal:
	docker exec -it sys-test3 bash


.PHONY: build
build: SHELL:=/bin/bash
build:
	docker build ./2.nginx-php-fm -t 2-ubuntu-systemd

.PHONY: pwd
pwd: SHELL:=/bin/bash
pwd:
	pwd

.PHONY: tmp
tmp: SHELL:=/bin/bash
tmp:
	docker-compose -f ./2.nginx-php-fm/docker-compose.yml up