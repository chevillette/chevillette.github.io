.PHONY: help

help:
	@grep -E '^[a-zA-Z0-9-]*:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

css: ## Tailwind watcher
	@npx tailwindcss -i ./src/input.css -o ./dist/output.css --watch

http: ## HTTP server
	@sudo python -m http.server 80 --directory .
