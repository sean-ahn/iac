.PHONY: lint
## lint: lint terraform files
lint:
	terraform fmt -recursive -check -diff
	terraform validate -no-color

.PHONY: format
## format: format terraform files
format:
	terraform fmt -recursive

.PHONY: help
## help: prints this help message
help:
	@echo "Usage: \n"
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':'
