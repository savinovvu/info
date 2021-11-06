

.PHONY: 2-up
2-up: SHELL:=/bin/bash
2-up:
	docker-compose -f ./2.nginx-php-fm-telegram/docker-compose.yml up --build

.PHONY: 2-destroy
2-destroy: SHELL:=/bin/bash
2-destroy:
	docker-compose -f .2.nginx-php-fm-telegram/docker-compose.yml down

.PHONY: 2-in
2-in: SHELL:=/bin/bash
2-in:
	docker exec -it bash2container bash

.PHONY: 2-rm
2-rm: SHELL:=/bin/bash
2-rm:
	docker rm bash2container
