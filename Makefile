.PHONY: help up down shell npm_watch composer_update

ENV ?= dev
PROJECT ?= moodle

help:                             ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
up:                               ## Turn on container services
	docker-compose --file docker-compose.$(ENV).yml up -d
stop:                             ## Turn off container services
	docker-compose --file docker-compose.$(ENV).yml stop
down:                             ## Turn off and remove container services
	docker-compose --file docker-compose.$(ENV).yml down
build:                            ## Build container images
	docker-compose --file docker-compose.$(ENV).yml build
rebuild:                          ## Rebuild and turn on container services
	docker-compose --file docker-compose.$(ENV).yml up -d --build
shell:                            ## Open a shell con container app
	docker exec -it $(PROJECT)_app bash

.DEFAULT_GOAL := help
