.PHONY: nginx-status
nginx-status: SHELL:=/bin/bash
nginx-status:
	systemctl status nginx | grep -E "running|dead|failed"