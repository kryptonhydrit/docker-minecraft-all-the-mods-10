IMAGE_NAME := kryptonhydrit/minecraft-atm10
IMAGE_VERSION ?= $(shell cat VERSION)

build:
	@echo "Build image: ${IMAGE_NAME}"
	docker build -t ${IMAGE_NAME}:latest .

publish: build
	@echo "Publishing image: ${IMAGE_NAME}"
	docker tag ${IMAGE_NAME}:latest ${IMAGE_NAME}:${IMAGE_VERSION}
	docker push ${IMAGE_NAME}:${IMAGE_VERSION}
	docker push ${IMAGE_NAME}:latest