.PHONY: sdk8
sdk8: SHELL:=/bin/bash
sdk8:
	source ${HOME}/.sdkman/bin/sdkman-init.sh && sdk default java 8.0.265-open  &&  sdk default gradle 5.6.4