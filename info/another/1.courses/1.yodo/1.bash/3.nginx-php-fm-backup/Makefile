

.PHONY: 3-up
3-up: SHELL:=/bin/bash
3-up:
	docker-compose -f ./3.nginx-php-fm-backup/docker-compose.yml up --build

.PHONY: 3-destroy
3-destroy: SHELL:=/bin/bash
3-destroy:
	docker-compose -f .3.nginx-php-fm-backup/docker-compose.yml down

.PHONY: 3-in
3-in: SHELL:=/bin/bash
3-in:
	docker exec -it bash2container bash

.PHONY: 3-rm
3-rm: SHELL:=/bin/bash
3-rm:
	docker rm bash2container
