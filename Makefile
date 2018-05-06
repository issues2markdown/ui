VERSION=`cat VERSION`

# Run

serve:	## Start the microservice
	npm run dev

.PHONY: build
build: 	## Build production microservice
	npm run build

.PHONY: version
version:	## Show version information
	@echo $(VERSION)-$(BUILD)

# Testing

.PHONY: test
test:	## Execute package tests
	npm run test

# Lint

lint:	## Lint source code
	npm run lint

# Dependencies

deps:	## Install package dependencies
	npm install
	
dev-deps:	## Install dev dependencies
	npm install --dev

.PHONY: help
help:	## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'