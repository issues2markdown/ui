VERSION=`cat VERSION`

# Run

serve:	## Start the microservice
	python3 -m http.server


.PHONY: version
version:	## Show version information
	@echo $(VERSION)-$(BUILD)

# Testing

.PHONY: test
test:	## Execute package tests 

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