VERSION=`cat VERSION`

# Build & Install

install:	## Build and install package on your system


.PHONY: version
version:	## Show version information
	@echo $(VERSION)-$(BUILD)

# Testing

.PHONY: test
test:	## Execute package tests 

.PHONY: cover
cover: 	## Generate test coverage data

.PHONY: coveralls
coveralls:
	goveralls -service circle-ci -repotoken <repo>

# Lint

lint:	## Lint source code

# Dependencies

deps:	## Install package dependencies
	npm install
	
dev-deps:	## Install dev dependencies
	npm install --dev

.PHONY: help
help:	## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'