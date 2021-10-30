.PHONY: nginx-status
nginx-status: SHELL:=/bin/bash
nginx-status:
	systemctl status nginx | grep -Eo "running|dead|failed"

.PHONY: php-status
php-status: SHELL:=/bin/bash
php-status:
	systemctl status php7.4-fpm.service | grep -E "running|dead|failed"


.PHONY: find-nginx
find-nginx: SHELL:=/bin/bash
find-nginx:
	 ps -ef | grep nginx

.PHONY: find-php
find-php: SHELL:=/bin/bash
find-php:
	 ps -ef | grep php7.4-fpm.service

.PHONY: debug
debug: SHELL:=/bin/bash
debug:
	 bash -x web_service_check.sh

.PHONY: run
run: SHELL:=/bin/bash
run:
	 ./web_service_check.sh