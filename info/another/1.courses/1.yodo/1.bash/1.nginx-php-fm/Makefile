

.PHONY: 1-up
1-up: SHELL:=/bin/bash
1-up:
	docker-compose -f ./1.nginx-php-fm/docker-compose.yml up --build

.PHONY: 1-destroy
1-destroy: SHELL:=/bin/bash
1-destroy:
	docker-compose -f ./1.nginx-php-fm/docker-compose.yml down

.PHONY: 1-in
1-in: SHELL:=/bin/bash
1-in:
	docker exec -it bash1container bash
