build:	## The build target generates the website from the markdown and configuration files in the directory dist/.

	hugo --destination ./dist/

clean:	## The clean target removes all content from the directory dist/.

	rm -r ./dist


post:	## The post target creates a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME.

	hugo new posts/$(POST_NAME).md
	sed -i '2s/title:.*$$/title: "$(POST_TITLE)"/' ./content/posts/$(POST_NAME).md

help:## Show help on using commands
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
