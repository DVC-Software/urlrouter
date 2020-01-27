DOCKER_IMAGE ?= nginx:latest
DOCKER_CONTAINER ?= dvc_url_router
HIDE ?= @
PORT ?= 80
NETWORK ?= bridge

pull:
	$(HIDE)docker pull nginx:latest

start: pull
	$(HIDE)docker-compose -f docker/docker-compose.yml up $(DOCKER_CONTAINER)

daemon: pull
	$(HIDE)docker-compose -f docker/docker-compose.yml up -d $(DOCKER_CONTAINER)