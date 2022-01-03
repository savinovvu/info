#!make
include .env
export $(shell sed 's/=.*//' .env)

.PHONY: test-env
test-env: SHELL:=/bin/bash
test-env:
	env | grep "ANY_ENV"