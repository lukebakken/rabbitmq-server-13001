.PHONY: clean down up

DOCKER_FRESH ?= false

clean:
	git clean -xffd

down:
	docker compose down
	docker compose rm --force

up:
ifeq ($(DOCKER_FRESH),true)
	docker compose build --no-cache --pull
	docker compose up --pull always
else
	docker compose build
	docker compose up
endif
