build:  ## Create Website
	@make lint && go build || exit -1

run: ## Run the application
	@./awesome-api >./awesome.log 2>&1 &

stop: ## Stop the application
	@kill "$(shell pgrep awesome-api)" 2>/dev/null &

clean:  ## Delete content of dist folder
	@rm -rf ./awesome-api && rm -rf awesome.log
	@pgrep awesome-api | xargs kill

test: ## Test the application
	@curl http://localhost:9999
	@curl http://localhost:9999/health

help: ## Show help command
	@sed -ne '/@sed/!s/## //p' Makefile

lint: ## Test lint on the files
	@golangci-lint run
