

.PHONY: x-up
x-up: SHELL:=/bin/bash
x-up:
	docker-compose -f ./1.nginx-php-fm/docker-compose.yml up --build

.PHONY: x-destroy
x-destroy: SHELL:=/bin/bash
x-destroy:
	docker-compose -f ./1.nginx-php-fm/docker-compose.yml down

.PHONY: x-in
x-in: SHELL:=/bin/bash
x-in:
	docker exec -it bash1container bash
