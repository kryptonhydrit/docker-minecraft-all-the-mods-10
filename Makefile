IMAGE_NAME := kryptonhydrit/minecraft-atm10
IMAGE_VERSION ?= $(shell cat VERSION)

build:
	docker build -t ${IMAGE_NAME}:latest .

publish: build
	docker tag ${IMAGE_NAME}:latest ${IMAGE_NAME}:${IMAGE_VERSION}
	docker push ${IMAGE_NAME}:${IMAGE_VERSION}
	docker push ${IMAGE_NAME}:latest