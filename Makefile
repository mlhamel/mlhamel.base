ifndef message
	message = "Updating base image"
endif

ifndef repos
	repos = mlhamel/mlhamel.base:latest
endif

.SHELLFLAGS = -e
.PHONY: docker-build
.NOTPARALLEL:

default: build
build: docker-build
commit: docker-commit
tag: docker-tag
push: docker-push
docker-build: do-docker-build
docker-commit: do-docker-commit
docker-tag: do-docker-tag
docker-push: do-docker-push

do-docker-build:
	docker build -t mlhamel.org --no-cache --rm . | tee build.log || exit 1

do-docker-commit:
	docker commit -m $(message) $(revision) $(repos)

do-docker-tag:
	docker tag -f $(revision) $(repos)

do-docker-push:
	docker push $(repos)


# Version Bump using bumpversion
patch:
	bumpversion patch
major:
	bumpversion major
minor:
	bumpversion minor
