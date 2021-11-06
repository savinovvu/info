.PHONY: edit-cron
edit-cron: SHELL:=/bin/bash
edit-cron:
	crontab -e


.PHONY: status-cron
status-cron: SHELL:=/bin/bash
status-cron:
	service cron status


.PHONY: backup-rsync
backup-rsync: SHELL:=/bin/bash
backup-rsync:
	rsync -av /etc/nginx/ /home/root/nginx_backup/

.PHONY: backup-rsync
backup-rsync: SHELL:=/bin/bash
backup-rsync:
	rsync -av /var/www/html/ /home/root/www_backup/



