DESTDIR=dist
HUGO_EXECUTABLE := hugo

help: ## command help
	fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

check: ## check
	markdownlint -f ./content/posts/*.md && markdown-link-check ./content/posts/*.md

build: ## build files
	curl -L https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.deb -o hugo.deb
	apt install ./hugo.deb
	rm hugo.deb
	make check && hugo -c $(DESTDIR)/*

clean: ## remove all file force ignore nonexistent files
	rm -Rf $(DESTDIR)/*

post: ## create new post
	$(HUGO_EXECUTABLE) new posts/$(POST_NAME).md
	sed -i 's/title:.*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

validate: ## validate index
	./w3c_validator.py ./dist/index.html || true