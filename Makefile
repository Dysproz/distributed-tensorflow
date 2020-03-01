DOCKER ?= docker

.PHONY: all

all: gpu cpu


gpu:
	$(DOCKER) build  -t distributed-tf:1.7.0-gpu -f Dockerfile.gpu .

cpu:
	$(DOCKER) build  -t distributed-tf:1.7.0 -f Dockerfile.cpu .

