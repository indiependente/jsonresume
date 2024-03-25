# Define the default target
.DEFAULT_GOAL := build

# Define the npm commands
NPM := npm
NPM_INSTALL := $(NPM) install
NPM_RUN := $(NPM) run

# Define the targets and their commands
.PHONY: install
install:
	$(NPM_INSTALL)

.PHONY: build
build: install
	$(NPM_RUN) build

.PHONY: test
test: install
	$(NPM_RUN) test

.PHONY: clean
clean:
	$(NPM_RUN) clean

.PHONY: start
start: install
	$(NPM_RUN) start
