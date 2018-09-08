LARAVEL_VERSION=5.7.*
NPM_VERSION=latest
COMPOSER_VERSION=latest

help:
	man $(CURDIR)/help_page

start: 
	docker-compose up

new:
	docker run --rm -v $(CURDIR):/app composer:$(COMPOSER_VERSION) create-project --prefer-dist laravel/laravel www "$(LARAVEL_VERSION)"

composer_install:
	docker run --rm -v $(CURDIR)/www:/app composer:$(COMPOSER_VERSION) install

npm_install: 
	docker run -v $(CURDIR)/www:/usr/src/app -w /usr/src/app node:$(NPM_VERSION) npm install

npm_watch: 
	docker run -v $(CURDIR)/www:/usr/src/app -w /usr/src/app node:$(NPM_VERSION) npm run watch

clean:
	rm -rf ./www

