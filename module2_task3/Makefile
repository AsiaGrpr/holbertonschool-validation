help:## Help
	-fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

build:## Build the application
	make lint && go build || exit -1

run:## Run
	./awesome-api >./awesome-api.log 2>&1 &

stop:## Stop
	-kill "$(shell pgrep awesome-api)"

clean:## Clean
	-make stop && rm -rf awesome-api coverage-integrations.out coverage-units.out

test:## Test
	make unit-tests
	make integration-tests

lint: ## Test lint on the files
	golangci-lint run

unit-tests: ## Test of unit test
	go test -v -short -coverprofile=coverage-units.out

integration-tests: ## Test integration-tests
	go test -v -coverprofile=coverage-integrations.out